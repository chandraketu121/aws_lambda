import json
import requests

def lambda_handler(event, context):
    response = requests.get("https://www.google.com")
    print(response.text)
    return {
        'statusCode': 200,
        'body': response.text
    }
