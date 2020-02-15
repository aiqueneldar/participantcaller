"""
Deals with everything related to the DELETE verb (Removing of objects)
Used by the main api_events module
"""
import json

import pymysql

from helpers import CONN, LOGGER

class RemoveException(Exception):
    """
    Just needed a specific Exception to catch to handle when something goes wrong in removal.
    """


def preform_delete(event_id: int, action: str, message: str) -> dict:
    """
        Executes stored procedure in database that deletes the parts and event
        :rtype: dict
        :param event_id: Integer of the event id to remove
        :param action: What to delete
        :param message: message template to use
        :return: Dict with status code and dict with data payload
        """
    cursor = CONN.cursor()
    try:
        cursor.callproc(str(action), (event_id,))
        CONN.commit()
    except pymysql.IntegrityError as db_err:
        LOGGER.error("Integrity Error in database when trying to remove {} {}, error: {}", message, event_id,
                     str(db_err))
        # HTTP Code 409 mean 'conflict'
        raise RemoveException(json.dumps({"statusCode": 409, "status": "Entity could not be removed"}))
    except pymysql.Error as db_err:
        LOGGER.error("Database returned error when removing entity roles from event with id {}, error: {}", event_id,
                     str(db_err))
        raise RemoveException(json.dumps({"statusCode": 500, "status": "Internal Error"}))
    except KeyError as kerr:
        LOGGER.error("Missing key in data. Couldn't complete removal of entity from event with id {}, error: {}",
                     event_id, str(kerr))
        raise RemoveException(json.dumps({"statusCode": 400, "status": "Missing data in request"}))
    except ValueError as verr:
        LOGGER.error("Wrong kind of value, can't convert to string. Error: {}", str(verr))
        raise  RemoveException(json.dumps({'statusCode': 500, "status": "Don't know what to remove"}))

    return {"statusCode": 204}

def delete_event(event):
    """
    Function to create a new event. Expects JSON encoded data with event details.
    :param event: event object AWS sends us with information about the API call
    :return: HTTP response codes
    """

    # Check to see that we have DELETE data at all
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

        # Determine if event exists
        cursor = CONN.cursor()
        try:
            cursor.execute("SELECT count(eventID) FROM Events WHERE eventID = {}".format(event_id))
            exists = int(cursor.fetchone()[0])
        except pymysql.err.OperationalError as err:
            LOGGER.error("Couldn't list all events. Problem with DB")
            raise err
        except ValueError:
            exists = 0
            LOGGER.error("Didn't get a valid integer back when examining if event with id {} exists", event_id)

        # If event don't exists, value of exists variable is None or 0, both false.
        if not exists:
            return {"statusCode": 404, "status": "Couldn't find event with id {}".format(event_id)}

        actions = [{'action': 'delete_event_attributes', 'message': 'attributes from event with id'},
                   {'action': 'delete_event_locations', 'message': 'locations from event with id'},
                   {'action': 'delete_event_thresholds', 'message': 'thresholds from event with id'},
                   {'action': 'delete_entity_event', 'message': 'event from entities with event id'},
                   {'action': 'delete_entity_event_abilities', 'message': 'abilities from entity for event'},
                   {'action': 'delete_entity_event_roles', 'message': 'locations from entity for event'},
                   {'action': 'delete_event', 'message': 'entity'}]

        for action in actions:
            try:
                preform_delete(event_id, action['action'], action['message'])
            except RemoveException as rev_err:
                return json.loads(str(rev_err))


    return {"statusCode": 204}  # HTTP Code 204 mean no body is sent back (as per usual with DELETE)
