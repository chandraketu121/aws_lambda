# Create a directory
mkdir lambda-dependencies

# nagivate inside the folder
cd lambda-dependencies

# Create the lambda function
vi lambda_function.py 

# go back to the root directory 
# Install the requests package 
pip3 install --target=lambda-dependencies requests

# zip the lambda code with dependencies
zip -r ../lambda-deployment.zip . 

#cope the zip file to S3 Bucket
aws s3 cp "/home/cloudshell-user/lambda-deployment.zip" s3://cloudexpertsolution

# From Lambda console upload the zip file