import boto3
import os

from base64 import b64decode

# decrypt method
def decrypt(encrypted_val):
    # code block to invoke KMS to decrypt the encrypted key
    decrypt_value = boto3.client('kms').decrypt(
        CiphertextBlob=b64decode(encrypted_val),
        EncryptionContext={'LambdaFunctionName': os.environ['AWS_LAMBDA_FUNCTION_NAME']}
    )['Plaintext'].decode('utf-8')
    return decrypt_value
    
# main block
def lambda_handler(event, context):
    
    # Retrieve the encrypted environment variable
    encrypted_val = os.getenv("ENV_VAR")
    
    # Decrypt the enviornment variable
    env_variable = decrypt(encrypted_val)
    
    print(env_variable)
    return env_variable
