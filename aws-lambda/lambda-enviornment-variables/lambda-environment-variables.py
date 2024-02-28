import json
import os

def lambda_handler(event, context):
    var = os.getenv("ENV_VAR")
    print(var)
    return var