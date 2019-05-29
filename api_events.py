import pymysql
import json
import os
import sys
import logging
import boto3
import base64
from botocore.exceptions import ClientError
from pymysql.err import *

global logger
logger = logging.getLogger()
logger.setLevel(logging.INFO)

def get_secret(env):

    secret_name = str(env) + "/partcaller/database"
    region_name = "eu-west-1"

    # Create a Secrets Manager client
    session = boto3.session.Session()
    client = session.client(
        service_name='secretsmanager',
        region_name=region_name
    )

    # In this sample we only handle the specific exceptions for the 'GetSecretValue' API.
    # See https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_GetSecretValue.html
    # We rethrow the exception by default.

    try:
        get_secret_value_response = client.get_secret_value(SecretId=secret_name)
    except ClientError as e:
        if e.response['Error']['Code'] == 'DecryptionFailureException':
            # Secrets Manager can't decrypt the protected secret text using the provided KMS key.
            # Deal with the exception here, and/or rethrow at your discretion.
            raise e
        elif e.response['Error']['Code'] == 'InternalServiceErrorException':
            # An error occurred on the server side.
            # Deal with the exception here, and/or rethrow at your discretion.
            raise e
        elif e.response['Error']['Code'] == 'InvalidParameterException':
            # You provided an invalid value for a parameter.
            # Deal with the exception here, and/or rethrow at your discretion.
            raise e
        elif e.response['Error']['Code'] == 'InvalidRequestException':
            # You provided a parameter value that is not valid for the current state of the resource.
            # Deal with the exception here, and/or rethrow at your discretion.
            raise e
        elif e.response['Error']['Code'] == 'ResourceNotFoundException':
            # We can't find the resource that you asked for.
            # Deal with the exception here, and/or rethrow at your discretion.
            raise e
    else:
        # Decrypts secret using the associated KMS CMK.
        # Depending on whether the secret is a string or binary, one of these fields will be populated.
        if 'SecretString' in get_secret_value_response:
            return get_secret_value_response['SecretString']
        else:
            return base64.b64decode(get_secret_value_response['SecretBinary'])

env = os.getenv("env", "dev")
json_secret = get_secret(env)
try:
    config = json.loads(json_secret)
except (json.JSONDecodeError) as jerr:
    logger.error("No config could be parsed: Error at pos " + jerr.pos + ": " + jerr.msg)

try:
    conn = pymysql.connect(host=config['host'], user=config['user'], passwd=['password'], db="PartcallerDB",
                           connect_timeout=5)
except (pymysql.err.OperationalError, pymysql.err.InternalError) as derr:
    logger.error("ERROR: Couldn't connect to database!")
    raise derr

logger.info("SUCCESS: Connection established to database")

def list_events(x):
    cursor = None
    try:
        cursor = conn.cursor()
    except (OperationalError, InternalError) as err:
        logger.error("Couldn't get database connection while listing events")
        raise err

    rows = []
    try:
        cursor.execute("SELECT * FROM Events")
        rows = cursor.fetchall()
    except (OperationalError) as err:
        logger.error("Couldn't list all events. Problem with DB")
        raise err

    return rows

def handler(event, context):
    '''Provide an event that contains the following keys:

          - operation: one of the operations in the operations dict below
          - payload: a parameter to pass to the operation being performed
        '''
    try:
        logger.debug("Received event: " + json.dumps(event))
    except json.JSONDecodeError:
        logger.debug("Couldn't print out event")

    operation = ""
    try:
        operation = event.get('httpMethod')
    except KeyError as err:
        logger.error("No operation submitted")
        raise err

    operations = {
        "GET": list_events,
    }
    payload = event.get('body', {})
    if payload:
        payload = json.loads(payload)

    if operation in operations:
        return operations[operation](payload)
    else:
        raise ValueError('Unrecognized operation "{}"'.format(operation))