"""
ParticipantCaller API Event handler

Handles Event-API calls for all HTTP Verbs
"""
import json

from gets import get_event
from posts import post_event
from puts import put_event
from helpers import LOGGER


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
        "PUT": put_event,
        "POST": post_event
    }

    if operation in operations:
        output = operations[operation](event)

        response = {
            "isBase64Encoded": False,
            "statusCode": output["statusCode"],
            "headers": {
                "Access-Control-Allow-Origin" : "*",
                "Access-Control-Allow-Credentials" : True
            },
            "body": json.dumps(output)
        }

        return response
    raise ValueError('Unrecognized operation "{}"'.format(operation))
