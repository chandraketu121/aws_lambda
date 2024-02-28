# Step 1 - Install Docker: Please refer "docker-installer.sh" for steps
# Step 2 - Pull the Docker Registry image from Docker Hub using the following command
docker pull registry:latest

# Step 3 - Run a Docker container using the Registry image, specifying any options or configurations you need. For example:
docker run -d -p 5000:5000 --name my-local-registry registry:latest
# Please replace (--name my-local-registry)

# Step 4 - Configure Docker Daemon (Optional): If you want to use the local registry without explicitly specifying the URL each time
# Edit the Docker daemon configuration file (typically located at /etc/docker/daemon.json) and add:
{
  "insecure-registries" : ["localhost:5000"]
}
# restart the Docker daemon for the changes to take effect.

# Step 5 - Push and Pull Images
docker tag my-image localhost:5000/my-image
docker push localhost:5000/my-image
docker pull localhost:5000/my-image
