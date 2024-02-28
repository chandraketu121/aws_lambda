# Check Docker Version
docker version
# Install Docker on Amazon Linux 2 or Amazon Linux 2023
# Update the installed packages and package cache on your instance.
sudo yum update -y

# Install the most recent Docker Community Edition package - Amazon Linux 2
sudo amazon-linux-extras install docker

#Install the most recent Docker Community Edition package - Amazon Linux 2023
sudo yum install -y docker

# Start the Docker service.
sudo service docker start

# Verify the docker version
sudo docker version

# Add the ec2-user to the docker group so that you can run Docker commands without using sudo.
sudo usermod -a -G docker ec2-user

# Verify that the ec2-user can run Docker commands without using sudo.
docker ps