"""
Functions related to the GET verb. Used by the main api_events module
"""
from helpers import *

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

    output = {}
    output["data"] = []

    for row in rows:
        data = {
            "event_id" : row[0],
            "event_name" : row[1],
            "completed" : row[2],
            "last_update" : str(row[3])
        }
        LOGGER.debug(str(data))
        output["data"].append(data)

    output["statusCode"] = 200
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

    output = {}
    output["statusCode"] = 200
    output["data"]["event"] = event
    output["data"]["event"]["eventAttributes"] = attributes
    output["data"]["event"]["eventLocations"] = locations


    LOGGER.debug(output)

    return output


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

    return events[operation](payload)