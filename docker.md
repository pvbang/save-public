## Docker

### Document
```bash
# Docker docs
https://docs.docker.com/get-started/

# Install and Use Docker on Ubuntu 20.04
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04

# Develop a Docker Application on Windows using WSL, Visual Studio Code, and Docker Desktop
https://www.digitalocean.com/community/tutorials/how-to-develop-a-docker-application-on-windows-using-wsl-visual-studio-code-and-docker-desktop
```

## Docker on Ubuntu 20.04
### Install
```bash
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce

sudo apt install docker-ce
```

### Executing the Docker Command Without Sudo (Optional)
```bash
# If you want to avoid typing sudo whenever you run the docker command, add your username to the docker group:
sudo usermod -aG docker ${USER}
su - ${USER}
```

### Using the Docker Command
```bash
# Using docker consists of passing it a chain of options and commands followed by arguments. The syntax takes this form:
docker [option] [command] [arguments]
```

### Working with Docker Images
```bash
# To check whether you can access and download images from Docker Hub, type:
docker run hello-world

# You can search for images available on Docker Hub by using the docker command with the search subcommand. For example, to search for the Ubuntu image, type:
docker search ubuntu

# Execute the following command to download the official ubuntu image to your computer:
docker pull ubuntu

# To see the images that have been downloaded to your computer, type:
docker images
```

### Running a Docker Container
```bash
# As an example, let’s run a container using the latest image of Ubuntu. The combination of the -i and -t switches gives you interactive shell access into the container:
docker run -it ubuntu

apt update
apt install nodejs
node -v

# exit
exit 
```

### Managing Docker Containers
```bash
# To view the active ones, use:
docker ps

# To view all containers — active and inactive, run docker ps with the -a switch:
docker ps -a

# To view the latest container you created, pass it the -l switch:
docker ps -l

# To start a stopped container, use docker start, followed by the container ID or the container’s name. Let’s start the Ubuntu-based container with the ID of 1c08a7a0d0e4:
docker start 1c08a7a0d0e4

# To stop a running container, use docker stop, followed by the container ID or name. This time, we’ll use the name that Docker assigned the container, which is quizzical_mcnulty:
docker stop quizzical_mcnulty

# Once you’ve decided you no longer need a container anymore, remove it with the docker rm command, again using either the container ID or the name. Use the docker ps -a command to find the container ID or name for the container associated with the hello-world image and remove it.
docker rm youthful_curie
```

### Committing Changes in a Container to a Docker Image
```bash
docker commit -m "What you did to the image" -a "Author Name" container_id repository/new_image_name
```

### Pushing Docker Images to a Docker Repository
```bash
# To push your image, first log into Docker Hub
docker login -u docker-registry-username

# Then you may push your own image using:
docker push docker-registry-username/docker-image-name

# To push the ubuntu-nodejs image to the sammy repository, the command would be:
docker push sammy/ubuntu-nodejs
```


## Docker on Windows
### Prerequisites
In order to follow along with this guide, you’ll need:

- Personal Computer with Windows 10 and the WSL 2 installed: https://www.digitalocean.com/community/tutorials/how-to-install-the-windows-subsystem-for-linux-2-on-microsoft-windows-10
- VSCode Installed

### Install
```bash
https://docs.docker.com/desktop/install/windows-install/
```









