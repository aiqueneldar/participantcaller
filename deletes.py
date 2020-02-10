"""
Deals with everything related to the DELETE verb (Removing of objects)
Used by the main api_events module
"""
import json

import pymysql

from helpers import CONN, LOGGER


def remove_event(event_id: int) -> dict:
    """
    Executes database stored procedure to delete event. And handles removal errors
    :rtype: dict
    :param event_id: int with the id of the event to delete
    :return: Dict consisting, of status code and dict with data payload
    """
    cursor = CONN.cursor()
    try:
        log_string = f"Deleting event with ID {event_id}"
        LOGGER.debug(log_string)
        cursor.callproc('delete_event', (event_id,))
        CONN.commit()
    except pymysql.IntegrityError as db_err:
        log_string = f"Integrity Error in database when trying to delete event [{event_id}], error: " \
                     f"{str(db_err)}"
        LOGGER.error(log_string)
        return {"statusCode": 409, "status": "Can't Delete"}  # HTTP Code 409 mean 'conflict'
    except pymysql.Error as db_err:
        log_string = f"Database returned error when deleting event: {str(db_err)}"
        LOGGER.error(log_string)
        return {"statusCode": 500, "status": "Internal Error"}
    except KeyError as kerr:
        log_string = f"Missing key in data. Couldn't complete removal of event: {str(kerr)}"
        LOGGER.error(log_string)
        return {"statusCode": 404, "status": "Missing data in request"}

    return {"statusCode": 204}


def delete_attributes(event_id: int) -> dict:
    """
    Executes stored procedure in database to remove attributes associated with event
    :rtype: dict
    :param event_id: Integer of the new event id created for the event
    :return: Tuple with status code and dict with data payload
    """
    cursor = CONN.cursor()
    try:
        log_string = f"Deleteing event attributes for event with id {event_id}"
        LOGGER.debug(log_string)
        cursor.callproc('delete_event_attributes', (event_id,))
        CONN.commit()
    except pymysql.IntegrityError as db_err:
        log_string = f"Integrity Error in database when trying to delete attributes from event with id {event_id}" \
                     f", error: {str(db_err)}"
        LOGGER.error(log_string)
        return {"statusCode": 409, "status": "Attribute can't be deleted"}  # HTTP Code 409 mean 'conflict'
    except pymysql.Error as db_err:
        log_string = f"Database returned error when deleting attributes from event with id {event_id}: {str(db_err)}"
        LOGGER.error(log_string)
        return {"statusCode": 500, "status": "Internal Error"}
    except KeyError as kerr:
        log_string = f"Missing key in data. Couldn't complete removal of attributes from event with id {event_id}: " \
                     f"{str(kerr)}"
        LOGGER.error(log_string)
        return {"statusCode": 404, "status": "Missing data in request"}

    return {"statusCode": 204}


def delete_locations(event_id: int) -> dict:
    """
    Executes stored procedure in database that deletes locations associated with the event
    :rtype: dict
    :param event_id: Integer of the new event id created for the event
    :return: Dict with status code and dict with data payload
    """
    cursor = CONN.cursor()
    try:
        cursor.callproc('delete_event_locations', (event_id,))
        CONN.commit()
    except pymysql.IntegrityError as db_err:
        log_string = f"Integrity Error in database when trying to remove locations from the event with id {event_id} " \
                     f", error: {str(db_err)}"
        LOGGER.error(log_string)
        return {"statusCode": 409, "status": "Location could not be removed"}  # HTTP Code 409 mean 'conflict'
    except pymysql.Error as db_err:
        log_string = f"Database returned error when removing locations from event with id {event_id}: {str(db_err)}"
        LOGGER.error(log_string)
        return {"statusCode": 500, "status": "Internal Error"}
    except KeyError as kerr:
        log_string = f"Missing key in data. Couldn't complete removal of locations from event with id {event_id}: " \
                     f"{str(kerr)}"
        LOGGER.error(log_string)
        return {"statusCode": 400, "status": "Missing data in request"}

    return {"statusCode": 204}


def delete_event(event):
    """
    Function to create a new event. Expects JSON encoded data with event details.
    :param event: event object AWS sends us with information about the API call
    :return: HTTP response codes
    """

    # Assume something went wrong and correct only if we succeed
    output = {}

    # Check to see that we have PUT data at all
    if "httpMethod" in event and event["httpMethod"] == "DELETE":
        body = event.get("body", "{}")
        # Try to load the data as JSON, that is what we expect. Should be event name, attributes and locations.
        try:
            data = json.loads(body)
            event_id = int(data["event_id"])
        except json.JSONDecodeError as jerror:
            log_string = f"Could not get event id from DELETE body. Got error: {str(jerror.msg)}"
            LOGGER.error(log_string)
            raise jerror
        except KeyError as kerr:
            log_string = f"Could not find all necessary keys in data provided. Error: {str(kerr)}"
            LOGGER.error(log_string)
            raise kerr
        except ValueError:
            LOGGER.error("Event ID is not an integer!")
            event_id = 0

        # First remove locations and attributes, as they use EventIds as FK
        output["locations"] = delete_locations(event_id)
        output["attributes"] = delete_attributes(event_id)

        # Lastly remove the event with the given event id
        output["event"] = remove_event(event_id)

        for value in output.values():
            if value["statusCode"] != 204:
                return_data = json.dumps(value)
                return return_data

    return {"statusCode": 204}  # HTTP Code 204 mean no body is sent back (as per usual with DELETE)
