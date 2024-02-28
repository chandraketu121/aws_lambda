# Sample Lambda code to invoke from api gateway
import json

def lambda_handler(event, context):
    print(event)
    message_body = "Sample Response from API Integration Lambda Function"
    status_code = 200
    return {
        'headers':{
            'Content-Type': "application/json"
        },
        'statusCode':status_code,
        'message_body': json.dumps(message_body)
    }

