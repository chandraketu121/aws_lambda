# Build the docker Image
docker build --tag amazonlinux:nodejs .

# Install the sharp and querystring module dependencies and compile the ‘Origin-Response’ function
docker run --rm --volume ${PWD}/lambda/origin-response-lambda:/build amazonlinux:nodejs /bin/bash -c "source ~/.bashrc; npm init -f -y; npm install sharp --save; npm install querystring --save; npm install --only=prod"

# Install the querystring module dependencies and compile the ‘Viewer-Request’ function
docker run --rm --volume ${PWD}/lambda/viewer-request-lambda:/build amazonlinux:nodejs /bin/bash -c "source ~/.bashrc; npm init -f -y; npm install querystring --save; npm install --only=prod"

# Package the ‘Origin-Response’ function.
mkdir -p dist && cd lambda/origin-response-lambda && zip -FS -q -r ../../dist/origin-response-function.zip * && cd ../..

# Package the ‘Viewer-Request’ function
mkdir -p dist && cd lambda/viewer-request-lambda && zip -FS -q -r ../../dist/viewer-request-function.zip * && cd ../..

# From AWS console, create S3 bucket in us-east-1 region to hold the deployment files and upload the zip files created in above steps. 
