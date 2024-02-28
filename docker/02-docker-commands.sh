# Downloads a Docker image from a registry like Docker Hub onto your local machine
    docker pull <image_name>

# Builds a Docker image from a Dockerfile located at the specified path.
    docker build <path_to_Dockerfile>

# Runs a Docker container from a specified image.
    docker run <image_name>

# Lists all running Docker containers.
    docker ps

# Lists all Docker containers, including those that are not currently running.
    docker ps -a

# Stops a running Docker container.
    docker stop <container_id>

# Starts a stopped Docker container.
    docker start <container_id>

# Restarts a Docker container.
    docker restart <container_id>

# Removes a Docker container.
    docker rm <container_id>

# Removes all stopped containers.
    docker rm $(docker ps -a -q) 

# Deletes a Docker image.
    docker rmi <image_id>

# Lists all Docker images available on your local machine.
    docker images
    docker image ls

# Returns low-level information about a container or image in JSON format.
    docker inspect <container_id or image_name>

# Displays logs from a running container.
    docker logs <container_id>

# Executes a command inside a running Docker container with interactive mode enabled.
    docker exec -it <container_id> <command>

# Copies files or folders from a Docker container to your local file system.
    docker cp <container_id>:<src_path> <dest_path>

# Copies files or folders from your local file system to a Docker container.
    docker cp <src_path> <container_id>:<dest_path>

# Starts services defined in a Docker Compose file.
    docker-compose up

# Stops and removes containers, networks, and volumes defined in a Docker Compose file.
    docker-compose down

# Builds Docker images from the Docker Compose file.
    docker-compose build

# Stops services defined in a Docker Compose file without removing them.
    docker-compose stop

# Starts services defined in a Docker Compose file.
    docker-compose start

# Restarts services defined in a Docker Compose file.
    docker-compose restart

# Executes a command inside a running service container defined in a Docker Compose file.
    docker-compose exec <service_name> <command>

# Displays logs for services defined in a Docker Compose file.
    docker-compose logs
