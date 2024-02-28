import json
import boto3

def lambda_handler(event, context):
    # Lists all S3 buckets in the current AWS account."""

    s3 = boto3.client('s3')
    response = s3.list_buckets()

    # Get a list of all bucket names
    bucket_names = [bucket['Name'] for bucket in response['Buckets']]

    # Print the bucket names to the console
    for bucket_name in bucket_names:
        print(bucket_name)

    return {
        'statusCode': 200,
        'body': json.dumps(bucket_names)
    }
