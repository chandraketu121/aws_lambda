import json

def lambda_handler(event, context):
    # Get the S3 bucket name and key from the event
    print("Lambda Function invoked using S3 event notification")
    s3_bucket_name = event['Records'][0]['s3']['bucket']['name']
    s3_object_key = event['Records'][0]['s3']['object']['key']
    
    # Print the file name and key name
    print(f"File name: {s3_object_key}")
    print(f"Key name: {s3_object_key}")
    print(f"S3 bucket name: {s3_bucket_name}")
    
    # Prepare the response body
    response_body = {
        'statusCode': 200,
        'body': json.dumps({
            'message': 'Lambda function executed successfully',
            'file_name': s3_object_key,
            'key_name': s3_object_key,
            'S3 bucket name' : s3_bucket_name
        })
    }
    
    return response_body
