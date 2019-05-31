'''
ParticipantCaller API Event handler

Handles Event-API calls for all HTTP Verbs
'''
import base64
import json
import logging
import os

import pymysql
from pymysql.err import OperationalError, InternalError

import boto3  # DO NOT BUNDLE provided by AWS
from botocore.exceptions import ClientError  # DO NOT BUNDLE provided by AWS

LOGGER = logging.getLogger()
LOGGER.setLevel(logging.INFO)


def get_secret(env):
    """
    Get secret to database credentials based on ENV we are in
    :rtype: object Either a binary (shouldn't happen) or a JSON encoded string
    """
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
    except ClientError as cerr:
        # Kept as a reminder.
        #if cerr.response['Error']['Code'] == 'DecryptionFailureException':
            # Secrets Manager can't decrypt the protected secret text using the provided KMS key.
            # Deal with the exception here, and/or rethrow at your discretion.
            #raise cerr
        #elif cerr.response['Error']['Code'] == 'InternalServiceErrorException':
            # An error occurred on the server side.
            # Deal with the exception here, and/or rethrow at your discretion.
            #raise cerr
        #elif cerr.response['Error']['Code'] == 'InvalidParameterException':
            # You provided an invalid value for a parameter.
            # Deal with the exception here, and/or rethrow at your discretion.
            #raise cerr
        #elif cerr.response['Error']['Code'] == 'InvalidRequestException':
            # You provided a parameter value that is not valid for the current state of the resource.
            # Deal with the exception here, and/or rethrow at your discretion.
            #raise cerr
        #elif cerr.response['Error']['Code'] == 'ResourceNotFoundException':
            # We can't find the resource that you asked for.
            # Deal with the exception here, and/or rethrow at your discretion.
            #raise cerr
        log_string = f"Got error while retreiving sercret: {cerr}"
        LOGGER.error(log_string)
    else:
        # Decrypts secret using the associated KMS CMK.
        # Depending on whether the secret is a string or binary, one of these fields will be populated.
        if 'SecretString' in get_secret_value_response:
            return get_secret_value_response['SecretString']
        return base64.b64decode(get_secret_value_response['SecretBinary'])


ENV = os.getenv("env", "dev").lower()
JSON_SECRET = get_secret(ENV)
CONFIG = {}
try:
    CONFIG = json.loads(JSON_SECRET)
except json.JSONDecodeError as jerr:
    LOGGER.error("No config could be parsed: Error at pos " + jerr.pos + ": " + jerr.msg)

LOGGER.debug(JSON_SECRET)

CONN = None
try:
    CONN = pymysql.connect(host=CONFIG.get('host'), user=CONFIG.get('username'), password=CONFIG.get('password'),
                           database="PartcallerDB", connect_timeout=5)
except (OperationalError, InternalError) as derr:
    LOGGER.error("ERROR: Couldn't connect to database!")
    raise derr
except KeyError as kerr:
    LOGGER.error("No such key in config. Config seems empty!")
    raise kerr

LOGGER.info("SUCCESS: Connection established to database")

def list_events(payload):
    """
    Get all events from the database and returns them all as a dictionary.

    :rtype: dict Dictionaty containing all rows fetched from the database
    """

    log_string = f"Not using payload: {str(payload)}"
    LOGGER.debug(log_string)

    cursor = None
    try:
        cursor = CONN.cursor()
    except (OperationalError, InternalError) as err:
        LOGGER.error("Couldn't get database connection while listing events")
        raise err

    rows = {}
    try:
        cursor.execute("SELECT * FROM Events")
        rows = cursor.fetchall()
    except (OperationalError) as err:
        LOGGER.error("Couldn't list all events. Problem with DB")
        raise err

    output = []

    for row in rows:
        data = [row[0], row[1], row[2], str(row[3])]
        LOGGER.debug(str(data))
        output.append(data)

    return output

def one_event(payload):
    """
    Get information about a single event.

    :param payload:  event_id
    :return: Dict with information about the event.
    """
    event_id = 0
    try:
        event_id = int(payload)
    except ValueError:
        LOGGER.error("Didn't get numeric Event ID.")

    cursor = None
    try:
        cursor = CONN.cursor()
    except (OperationalError, InternalError) as err:
        LOGGER.error("Couldn't get database connection while listing events")
        raise err

    event = {}
    try:
        cursor.execute(f"SELECT * FROM Events WHERE event_id = {event_id}")
        event = cursor.fetchone()
    except (OperationalError) as err:
        LOGGER.error("Couldn't list all events. Problem with DB")
        raise err

    attributes = {}
    try:
        cursor.execute(f"SELECT * FROM PartcallerDB.EventAttributes WHERE event_id = {event_id}")
        attributes = cursor.fetchall()
    except (OperationalError) as err:
        LOGGER.error("Couldn't list all events. Problem with DB")
        raise err

    locations = {}
    try:
        cursor.execute(f"SELECT * FROM PartcallerDB.EventAttributes WHERE event_id = {event_id}")
        locations = cursor.fetchall()
    except (OperationalError) as err:
        LOGGER.error("Couldn't list all events. Problem with DB")
        raise err

    output = {
        "eventid": event[0],
        "eventname": event[1],
        "eventdone": event[2],
        "eventupdate": str(event[3]),
        "eventattributes": attributes,
        "eventlocations": locations
    }

    LOGGER.debug(output)

    return output


def get_event(event):
    """
    Function to determine if we want to list all events, or get a specific event and its information
    :param event: event object AWS sends us with information about the API call
    :return: Dict data ready to be JSON serialized
    """
    events = {
        "list": list_events,
        "getevent": one_event
    }

    operation = "list"
    payload = ""
    if "queryStringParameters" in event:
        if "eventid" in event.get("queryStringParameters"):
            operation = "getevent"
            payload = event.get("queryStringParameters").get("eventid")

    return events[operation](payload)

def handler(event, context):
    '''Provide an event that contains the following keys:
        - operation: one of the operations in the operations dict below
        - payload: a parameter to pass to the operation being performed
        '''
    try:
        log_string = f"Received event: {json.dumps(event)} and context: {str(vars(context))}"
        LOGGER.debug(log_string)
    except json.JSONDecodeError:
        LOGGER.debug("Couldn't print out event")

    operation = ""
    try:
        operation = event.get('httpMethod')
    except KeyError as err:
        LOGGER.error("No operation submitted")
        raise err

    operations = {
        "GET": get_event,
    }

    if operation in operations:
        output = operations[operation](event)

        response = {
            "isBase64Encoded": False,
            "statusCode": 200,
            "body": json.dumps(output)
        }

        return response
    raise ValueError('Unrecognized operation "{}"'.format(operation))
