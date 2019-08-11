"""
ParticipantCaller API Event handler

Handles Event-API calls for all HTTP Verbs
"""
import base64
import json
import logging
import os
import sys

import pymysql
from pymysql.err import OperationalError, InternalError

import boto3  # DO NOT BUNDLE provided by AWS
from botocore.exceptions import ClientError  # DO NOT BUNDLE provided by AWS

# Setup logging as we want it
LOGGER = logging.getLogger()
FORMAT = logging.Formatter("%(asctime)s - %(levelname)s - %(message)s")
HANDLER = logging.StreamHandler(sys.stdout)
HANDLER.setFormatter(FORMAT)
HANDLER.setLevel(logging.INFO)

for curr_handler in LOGGER.handlers:
    LOGGER.removeHandler(curr_handler)

LOGGER.addHandler(HANDLER)


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
        # if cerr.response['Error']['Code'] == 'DecryptionFailureException':
        #   # Secrets Manager can't decrypt the protected secret text using the provided KMS key.
        #   # Deal with the exception here, and/or rethrow at your discretion.
        #   #raise cerr
        # elif cerr.response['Error']['Code'] == 'InternalServiceErrorException':
        #   # An error occurred on the server side.
        #   # Deal with the exception here, and/or rethrow at your discretion.
        #   #raise cerr
        # elif cerr.response['Error']['Code'] == 'InvalidParameterException':
        #   # You provided an invalid value for a parameter.
        #   # Deal with the exception here, and/or rethrow at your discretion.
        #   #raise cerr
        # elif cerr.response['Error']['Code'] == 'InvalidRequestException':
        #   # You provided a parameter value that is not valid for the current state of the resource.
        #   # Deal with the exception here, and/or rethrow at your discretion.
        #   #raise cerr
        # elif cerr.response['Error']['Code'] == 'ResourceNotFoundException':
        #   # We can't find the resource that you asked for.
        #   # Deal with the exception here, and/or rethrow at your discretion.
        #   #raise cerr
        log_string = f"Got error while retrieving secret: {cerr}"
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


def get_event_list(payload):
    """
    Get all events from the database and returns them all as a dictionary.

    :rtype: dict Dictionary containing all rows fetched from the database
    """

    log_string = f"Not using payload: {str(payload)}"
    LOGGER.debug(log_string)

    try:
        cursor = CONN.cursor()
    except (OperationalError, InternalError) as err:
        LOGGER.error("Couldn't get database connection while listing events")
        raise err

    try:
        cursor.execute("SELECT * FROM Events")
        rows = cursor.fetchall()
    except OperationalError as err:
        LOGGER.error("Couldn't list all events. Problem with DB")
        raise err

    output = []

    for row in rows:
        data = [row[0], row[1], row[2], str(row[3])]
        LOGGER.debug(str(data))
        output.append(data)

    return output


def get_single_event(payload):
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

    try:
        cursor = CONN.cursor(pymysql.cursors.DictCursor)
    except (OperationalError, InternalError) as err:
        LOGGER.error("Couldn't get database connection while listing events")
        raise err

    event = {}
    try:
        cursor.execute(f"SELECT * FROM Events WHERE eventID = {event_id}")
        event = cursor.fetchone()
    except (OperationalError, InternalError) as err:
        log_string = f"Couldn't get the event with id {event_id}. Problem with DB. \
                    Error msg: {err}"
        LOGGER.error(log_string)

    attributes = {}
    try:
        cursor.execute(f"SELECT * FROM PartcallerDB.EventAttributes WHERE eventID = {event_id}")
        attributes = cursor.fetchall()
    except (OperationalError, InternalError) as err:
        log_string = f"Couldn't list all event attributes from event with id {event_id}. Problem with DB. \
                    Error msg: {err}"
        LOGGER.error(log_string)

    locations = {}
    try:
        cursor.execute(f"SELECT * FROM PartcallerDB.EventLocations WHERE eventID = {event_id}")
        locations = cursor.fetchall()
    except (OperationalError, InternalError) as err:
        log_string = f"Couldn't list all locations for event with id {event_id}. Problem with DB. \
                    Error msg: {err}"
        LOGGER.error(log_string)

    output = event
    output["lastUpdate"] = str(event["lastUpdate"])
    output["eventAttributes"] = attributes
    output["eventLocations"] = locations

    LOGGER.debug(output)

    return 200, output


def get_event(event):
    """
    Function to determine if we want to list all events, or get a specific event and its information
    :param event: event object AWS sends us with information about the API call
    :return: Dict data ready to be JSON serialized
    """
    events = {
        "get_event_list": get_event_list,
        "get_single_event": get_single_event
    }

    operation = "get_event_list"
    payload = ""
    if "queryStringParameters" in event:
        qparameters = event.get("queryStringParameters")
        if qparameters and "eventid" in qparameters:
            operation = "get_single_event"
            payload = qparameters.get("eventid")

    return 200, events[operation](payload)


def create_event(event_data: dict) -> tuple:
    """
    Executes database stored procuedure to create event. And handles creation errors
    :rtype: tuple
    :param event_data: Dcit containeing the data needed to create the event
    :return: Tuple consisting, of status code and dict with data payload
    """
    cursor = CONN.cursor()
    try:
        LOGGER.debug("Creating event named {}", event_data['name'])
        name = f"'{event_data['name']}'"
        cursor.callproc('create_new_event', (name, ))
        CONN.commit()
        event_id = cursor.lastrowid
    except pymysql.IntegrityError as db_err:
        LOGGER.error("Integrity Error in database when trying to add new event [{}], error: {}",
                     event_data['name'], db_err)
        return 409, {"status": "Already exists"}  # HTTP Code 409 mean 'conflict'
    except pymysql.Error as db_err:
        LOGGER.error("Database returned error when creating new event: {}", db_err)
        return 500, {"status": "Internal Error"}
    except KeyError as kerr:
        LOGGER.error("Missing key in data. Couldn't complete creation of new event: {}", kerr)
        return 404, {"status": "Missing data in request"}

    return 200, {"status": "Success", "event_id": event_id}


def create_attributes(event_data: dict, event_attributes: dict, event_id: int) -> tuple:
    """
    Executes stored procedure in database to set attributes for the newly created event
    :rtype: tuple
    :param event_data: Dict with data regarding the event
    :param event_attributes: Data regarding attributes this event should have
    :param event_id: Integer of the new event id created for the event
    :return: Tuple with status code and dict with data payload
    """
    cursor = CONN.cursor()
    try:
        for curr_attribute in event_attributes:
            cursor.callproc('create_new_event_attributes', event_id, curr_attribute['attribute_id'],
                            curr_attribute['attribute_value'])
        CONN.commit()
    except pymysql.IntegrityError as db_err:
        LOGGER.error("Integrity Error in database when trying to add attributes to the new Event "
                     "[{}], error: {}", event_data['name'], db_err)
        return 409, {"status": "Attribute already exists"}  # HTTP Code 409 mean 'conflict'
    except pymysql.Error as db_err:
        LOGGER.error("Database returned error when populating event with attributes: {}", db_err)
        return 500, {"status": "Internal Error"}
    except KeyError as kerr:
        LOGGER.error("Missing key in data. Couldn't complete population of attributes to new event: {}", kerr)
        return 404, {"status": "Missing data in request"}

    return 200, {"status": "Success"}


def create_locations(event_data: dict, event_locations: dict, event_id: int) -> tuple:
    """
    Executes stored precedure in database that sets the event's locations
    :rtype: tuple
    :param event_data: Dict with data regarding the event
    :param event_locations: Data regarding locations this event should have
    :param event_id: Integer of the new event id created for the event
    :return: Tuple with status code and dict with data payload
    """
    cursor = CONN.cursor()
    try:
        for curr_location in event_locations:
            cursor.callproc('create_new_event_locations', event_id, curr_location['location_id'])
            CONN.commit()
    except pymysql.IntegrityError as db_err:
        LOGGER.error("Integrity Error in database when trying to add locations to the new Event "
                     "[{}], error: {}", event_data['name'], db_err)
        return 409, {"status": "Location already exists"}  # HTTP Code 409 mean 'conflict'
    except pymysql.Error as db_err:
        LOGGER.error("Database returned error when populating event with locations: {}", db_err)
        return 500, {"status": "Internal Error"}

    except KeyError as kerr:
        LOGGER.error("Missing key in data. Couldn't complete population of locations to new event: {}", kerr)
        return 404, {"status": "Missing data in request"}

    return 200, {"status": "Success"}


def post_event(event):
    """
    Function to create a new event. Expects JSON encoded data with event details.
    :param event: event object AWS sends us with information about the API call
    :return: HTTP response codes
    """

    # Assume something went wrong and correct only if we succeed
    output = {}

    # Check to see that we have POST data at all
    if "httpMethod" in event and event["httpMethod"] == "POST":
        body = event.get("body", "{}")

        # Try to load the data as JSON, that is what we expect. Should be event name, attributes and locations.
        try:
            data = json.loads(body)
            event_data = data["event"]
            event_attributes = data["attributes"]
            event_locations = data["locations"]
        except json.JSONDecodeError as jerr:
            LOGGER.error("Could not get data from POST body. Got error: {}", jerr.msg)
            raise jerr
        except KeyError as kerr:
            LOGGER.error("Could not find all necessary keys in data provided. Error: {}", kerr)
            raise kerr

        # Start by creating a new event so we get the new event ID
        output["event"] = create_event(event_data)
        event_id = output["event"][1]["event_id"]

        # Then populate the attributes of the event
        output["attributes"] = create_attributes(event_data, event_attributes, event_id)

        # Lastly populate locations
        output["locations"] = create_locations(event_data, event_locations, event_id)

        for value in output.values():
            if value[0] != 200:
                return_data = (value[0], json.dumps(value[1]))
                return return_data

    return 201, '{"status": "Created"}'  # HTTP Code 201 mean 'created'


def handler(event, context):
    """Provide an event that contains the following keys:
        - operation: one of the operations in the operations dict below
        - payload: a parameter to pass to the operation being performed
        """
    try:
        log_string = f"Received event: {json.dumps(event)} and context: {str(vars(context))}"
        LOGGER.debug(log_string)
    except json.JSONDecodeError:
        LOGGER.debug("Couldn't print out event")

    try:
        operation = event.get('httpMethod')
    except KeyError as err:
        LOGGER.error("No operation submitted")
        raise err

    operations = {
        "GET": get_event,
        "POST": post_event
    }

    if operation in operations:
        output = operations[operation](event)

        response = {
            "isBase64Encoded": False,
            "statusCode": output[0],
            "body": json.dumps(output[1])
        }

        return response
    raise ValueError('Unrecognized operation "{}"'.format(operation))
