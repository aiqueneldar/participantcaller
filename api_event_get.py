import pymysql
import json
import os
import sys
import logging

rds_host = "partcaller-dev-1.cxieqhsuon07.eu-west-1.rds.amazonaws.com"
db_user = os.getenv("database_user")
db_pass = os.getenv("database_password")

logger = logging.getLogger()
logger.setLevel(logging.INFO)

try:
    conn = pymysql.connect(rds_host, user=db_user, passwd=db_pass, db="partcaller", connect_timeout=5)
except:
    logger.error("ERROR: Couldn't connect to database!")
    sys.exit(1)

logger.info("SUCCESS: Connection established to database")


def handler(event, context):
    with conn.cursor() as cur:
        cur.execute("SELECT * FROM Events Order by eventName")
        return json.dumps(cur)
