# Sample payload and comments to invoke Lambda from Cloud Shell
{
  "course": "aws-lambda",
  "course-series": "zero-to-hero",
  "creator": "cloudexpert-solution"
}

# Command to invoke lambda function synchronously from Cloud Shell (from Mac/Linux)
aws lambda invoke --function-name ces_demo_lambda --cli-binary-format raw-in-base64-out \
--payload '{ "creator": "cloudexpert-solution" }' response.json

# Command to invoke lambda function synchronously from Cloud Shell (from Windows CMD)
aws lambda invoke --function-name ces_demo_lambda --cli-binary-format raw-in-base64-out ^
--payload "{""creator"":""cloudexpert-solution""}" response.json

# Lambda Asynchronous Invocation
# Command to invoke lambda function Asynchronously from Cloud Shell (from Mac/Linux)
aws lambda invoke --function-name api_gateway_integration_lambda --invocation-type Event \
    --cli-binary-format raw-in-base64-out --payload '{"creator": "cloudexpert-solution"}' response.json
