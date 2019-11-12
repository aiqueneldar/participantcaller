"""
Deals with the POST verb (updating existing values)
Used by the main api_events module
"""
import json

import pymysql

from helpers import CONN, LOGGER


def update_event(event_data: dict) -> dict:
    """
    Executes database stored procedure to create event. And handles creation errors
    :rtype: tuple
    :param event_data: Dict containing the data needed to create the event
    :return: Tuple consisting, of status code and dict with data payload
    """
    cursor = CONN.cursor()
    try:
        log_string = f"Updating event to new name {event_data['name']}"
        LOGGER.debug(log_string)
        new_name = f"'{event_data['name']}'"
        event_id = f"{event_data['event_id']}'"
        cursor.callproc('update_event', (event_id, new_name))
        CONN.commit()
    except pymysql.IntegrityError as db_err:
        log_string = f"Integrity Error in database when trying to update event to [{event_data['name']}], error: " \
                     f"{str(db_err)}"
        LOGGER.error(log_string)
        return {"statusCode": 400, "status": "Update Error"}  # HTTP Code 409 mean 'conflict'
    except pymysql.Error as db_err:
        log_string = f"Database returned error when updating event: {str(db_err)}"
        LOGGER.error(log_string)
        return {"statusCode": 500, "status": "Internal Error"}
    except KeyError as kerr:
        log_string = f"Missing key in data. Couldn't complete update of event: {str(kerr)}"
        LOGGER.error(log_string)
        return {"statusCode": 404, "status": "Missing data in request"}

    return {"statusCode": 200, "status": "Success"}

def update_attributes(event, attributes):
    """
        Executes stored procedure in database to set attributes for the  event
        :rtype: dict
        :param event: Dict with data regarding the event
        :param attributes: Data regarding attributes this event should have
        :return: Dict with status code and data payload
        """
    cursor = CONN.cursor()
    try:
        for attribute in attributes:
            log_string = f"Event ID {str(event['event_id'])} attribute ID {str(attribute['attribute_id'])} value " \
                         f"{str(attribute['attribute_value'])}"
            LOGGER.debug(log_string)
            cursor.callproc('update_event_attributes',
                            (event['event_id'], attribute['attribute_id'], attribute['attribute_value']))
        CONN.commit()
    except pymysql.IntegrityError as db_err:
        log_string = f"Integrity Error in database when trying to update attributes to the Event " \
                     f"[{event['name']}], error: {str(db_err)}"
        LOGGER.error(log_string)
        return {"statusCode": 400, "status": "Attribute update error"}  # HTTP Code 409 mean 'conflict'
    except pymysql.Error as db_err:
        log_string = f"Database returned error when updating event attributes: {str(db_err)}"
        LOGGER.error(log_string)
        return {"statusCode": 500, "status": "Internal Error"}
    except KeyError as kerr:
        log_string = f"Missing key in data. Couldn't complete update of attributes to event: {str(kerr)}"
        LOGGER.error(log_string)
        return {"statusCode": 404, "status": "Missing data in request"}

    return {"statusCode": 200, "status": "Success"}

def update_locations(event: dict, locations: dict) -> dict:
    """
    Executes stored procedure in database that sets the event's locations
    :rtype: dict
    :param event: Dict with data regarding the event
    :param locations: Data regarding locations this event should have
    :return: Dict with status code and with data payload
    """
    cursor = CONN.cursor()
    try:
        for location in locations:
            cursor.callproc('update_event_locations', (event['event_id'], location['location_id']))
            CONN.commit()
    except pymysql.IntegrityError as db_err:
        log_string = f"Integrity Error in database when trying to update locations to the Event " \
                     f"[{event['name']}], error: {str(db_err)}"
        LOGGER.error(log_string)
        return {"statusCode": 400, "status": "Location update error"}  # HTTP Code 409 mean 'conflict'
    except pymysql.Error as db_err:
        log_string = f"Database returned error when updating event with locations: {str(db_err)}"
        LOGGER.error(log_string)
        return {"statusCode": 500, "status": "Internal Error"}

    except KeyError as kerr:
        log_string = f"Missing key in data. Couldn't complete update of locations to event: {str(kerr)}"
        LOGGER.error(log_string)
        return {"statusCode": 400, "status": "Missing data in request"}

    return {"statusCode": 200, "status": "Success"}

def post_event(event):
    """
    Function to update event. Expects JSON encoded data with event details.
    :param event: event object AWS sends us with information about the API call
    :return: HTTP response codes
    """

    # Assume something went wrong and correct only if we succeed
    output = {}

    # Check to see that we have POST data at all
    if "httpMethod" in event and event["httpMethod"] == "POST":
        body = event.get("body", "{}") # Get the body or empty dict

        # Try to load the data as JSON, that is what we expect. Should be event name, attributes and locations.
        try:
            body_json = json.loads(body) # Convert to JSON
            event_data = body_json["event"]
            event_attributes = body_json["attributes"]
            event_locations = body_json["locations"]
        except json.JSONDecodeError as jerr:
            log_string = f"Could not get update data from POST body. Got error: {str(jerr.msg)}"
            LOGGER.error(log_string)
            raise jerr
        except KeyError as kerr:
            log_string = f"Could not find all necessary keys in data provided. Error: {str(kerr)}"
            LOGGER.error(log_string)
            raise kerr

        # Start by creating a new event so we get the new event ID
        output["event"] = update_event(event_data)

        # Lastly populate locations
        output["locations"] = update_locations(event_data, event_locations)

        # Then populate the attributes of the event
        output["attributes"] = update_attributes(event_data, event_attributes)

        for value in output.values():
            if value[0] != 200:
                return_data = (value[0], json.dumps(value[1]))
                return return_data

    return {"statusCode": 200, "status": "Updated"}  # HTTP Code 201 mean 'created'
