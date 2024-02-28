# Step 1 -  Create a .js file "app.js"
# Step 2 - Create the Dockerfile 
# Step 3 - Build the docker image
docker build -t <tage-name> .

# Step 4 - Check the docker image created 
docker images 
# or
docker image ls

#Step 5 - Run the docker application 
docker run <tage-name>

#Step 6 - Login to Docker Hub
docker login

#Step 7 - Push the docker image
docker tag local-image:tagname new-repo:tagname
docker push new-repo:tagname
