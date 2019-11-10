"""
Deals with everything related to the PUTS verb (creation of new items)
Used by the main api_events module
"""

from helpers import *

def create_event(event_data: dict) -> dict:
    """
    Executes database stored procuedure to create event. And handles creation errors
    :rtype: tuple
    :param event_data: Dcit containeing the data needed to create the event
    :return: Tuple consisting, of status code and dict with data payload
    """
    cursor = CONN.cursor()
    try:
        log_string = f"Creating event named {event_data['name']}"
        LOGGER.debug(log_string)
        name = f"'{event_data['name']}'"
        cursor.callproc('create_new_event', (name, ))
        cursor.execute("SELECT LAST_INSERT_ID()")
        event_id = cursor.fetchone()
        CONN.commit()
    except pymysql.IntegrityError as db_err:
        log_string = f"Integrity Error in database when trying to add new event [{event_data['name']}], error: " \
                     f"{str(db_err)}"
        LOGGER.error(log_string)
        return {"statusCode": 400, "status": "Already exists"}  # HTTP Code 409 mean 'conflict'
    except pymysql.Error as db_err:
        log_string = f"Database returned error when creating new event: {str(db_err)}"
        LOGGER.error(log_string)
        return {"statusCode": 500, "status": "Internal Error"}
    except KeyError as kerr:
        log_string = f"Missing key in data. Couldn't complete creation of new event: {str(kerr)}"
        LOGGER.error(log_string)
        return {"statusCode": 404, "status": "Missing data in request"}

    return {"statusCode": 200, "status": "Success", "event_id": event_id}


def create_attributes(event_data: dict, event_attributes: dict, event_id: int) -> dict:
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
            log_string = f"Event ID {str(event_id)} attribute ID {str(curr_attribute['attribute_id'])} value " \
                         f"{str(curr_attribute['attribute_value'])}"
            LOGGER.debug(log_string)
            cursor.callproc('create_new_event_attributes',
                            (event_id, curr_attribute['attribute_id'], curr_attribute['attribute_value']))
        CONN.commit()
    except pymysql.IntegrityError as db_err:
        log_string = f"Integrity Error in database when trying to add attributes to the new Event " \
                     f"[{event_data['name']}], error: {str(db_err)}"
        LOGGER.error(log_string)
        return {"statusCode": 400, "status": "Attribute already exists"}  # HTTP Code 409 mean 'conflict'
    except pymysql.Error as db_err:
        log_string = f"Database returned error when populating event with attributes: {str(db_err)}"
        LOGGER.error(log_string)
        return {"statusCode": 500, "status": "Internal Error"}
    except KeyError as kerr:
        log_string = f"Missing key in data. Couldn't complete population of attributes to new event: {str(kerr)}"
        LOGGER.error(log_string)
        return {"statusCode": 404, "status": "Missing data in request"}

    return {"statusCode": 200, "status": "Success"}


def create_locations(event_data: dict, event_locations: dict, event_id: int) -> dict:
    """
    Executes stored procedure in database that sets the event's locations
    :rtype: tuple
    :param event_data: Dict with data regarding the event
    :param event_locations: Data regarding locations this event should have
    :param event_id: Integer of the new event id created for the event
    :return: Tuple with status code and dict with data payload
    """
    cursor = CONN.cursor()
    try:
        for curr_location in event_locations:
            cursor.callproc('create_new_event_locations', (event_id, curr_location['location_id']))
            CONN.commit()
    except pymysql.IntegrityError as db_err:
        log_string = f"Integrity Error in database when trying to add locations to the new Event " \
                     f"[{event_data['name']}], error: {str(db_err)}"
        LOGGER.error(log_string)
        return {"statusCode": 400, "status": "Location already exists"}  # HTTP Code 409 mean 'conflict'
    except pymysql.Error as db_err:
        log_string = f"Database returned error when populating event with locations: {str(db_err)}"
        LOGGER.error(log_string)
        return {"statusCode": 500, "status": "Internal Error"}

    except KeyError as kerr:
        log_string = f"Missing key in data. Couldn't complete population of locations to new event: {str(kerr)}"
        LOGGER.error(log_string)
        return {"statusCode": 400, "status": "Missing data in request"}

    return {"statusCode": 200, "status": "Success"}


def put_event(event):
    """
    Function to create a new event. Expects JSON encoded data with event details.
    :param event: event object AWS sends us with information about the API call
    :return: HTTP response codes
    """

    # Assume something went wrong and correct only if we succeed
    output = {}

    # Check to see that we have PUT data at all
    if "httpMethod" in event and event["httpMethod"] == "PUT":
        body = event.get("body", "{}")

        # Try to load the data as JSON, that is what we expect. Should be event name, attributes and locations.
        try:
            data = json.loads(body)
            event_data = data["event"]
            event_attributes = data["attributes"]
            event_locations = data["locations"]
        except json.JSONDecodeError as jerr:
            log_string = f"Could not get data from PUT body. Got error: {str(jerr.msg)}"
            LOGGER.error(log_string)
            raise jerr
        except KeyError as kerr:
            log_string = f"Could not find all necessary keys in data provided. Error: {str(kerr)}"
            LOGGER.error(log_string)
            raise kerr

        # Start by creating a new event so we get the new event ID
        output["event"] = create_event(event_data)
        event_id = output["event"][1]["event_id"]
        log_string = f"New event got ID {str(event_id)}"
        LOGGER.debug(log_string)

        # Lastly populate locations
        output["locations"] = create_locations(event_data, event_locations, event_id)

        # Then populate the attributes of the event
        output["attributes"] = create_attributes(event_data, event_attributes, event_id)

        for value in output.values():
            if value["statusCode"] != 200:
                return_data = json.dumps(value)
                return return_data

    return {"statusCode": 201, "status": "Created"}  # HTTP Code 201 mean 'created'