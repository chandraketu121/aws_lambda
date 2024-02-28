import json

def lambda_handler(event, context):
    print(event)
    message_body = "Sample Response from the Lambda: "
    status_code = 200
    response_body = {
        'headers':{
            'Content-Type': "application/json"
        },
        'statusCode':status_code,
        'event' :event,
        'message_body': json.dumps(message_body)
    }
    # code to return success
    #return response_body
    # 
    raise Exception ('Sample exception raised from the lambda code')
