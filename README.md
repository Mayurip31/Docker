# Docker

Docker is a containerization platform that simplifies application development, deployment, and management by packaging software into portable containers.

# Continer

A container is a lightweight, portable, and self-sufficient package that contains everything needed to run a software application, including code, runtime, system tools, and libraries, ensuring consistency and efficiency across different computing environments.


# Commands ------> Docker Engine

# Lifecycle of Docker/Container

    Write docker file
    create Image
    Execute image and create container


# Key-Concepts

1. Container vs Virtual Machine 

Containers are isolated packages for software that share the operating system, making them lightweight and efficient.
virtual machines are complete computer systems simulated within a computer, requiring more resources due to duplication of operating systems.

2. Docker Images

Immutable Templates use to create containers.

3. Docker Container

Runtime instance created from a Docker image.

4. Docker Hub

Repository for docker image.

5. Docker Engine

Software for running and managing containers.



# Three Main Components (Docker Architecture)

1. Docker Client (docker pull, docker build, docker push, docker run) -->  interface to intercat with Docker CLI
2. Docker Host (Docker Daemon //Containers,images) -->  machine running the Docker daemon.
3. Docker Registry (Holds docker images) 


# Installation of docker on ubuntu

1. sudo apt update 
2. sudo apt install docker.io -y
3. sudo systemctl status docker


# Docker root directory
   root_dir = /var/lib/docker


# Some Commands of Docker

1. docker run <Image_Name>
    # create and run a Docker container in the foreground
    # meaning that the container's output is attached to your terminal


2. docker run -d <Image_Name>
    # -d flag stands for "detached" mode
    # It starts the container in the background

3. docker ps
    # list the running Docker containers
    # It provides information such as the container ID, image used to create the container, status, ports mapping, and more.

4. docker ps -a
    # Lists all Docker containers, including both running and stopped containers

5. docker inspect [NAME/ID]
    # Provide detailed information of container/image
    # In JSON format

6. docker run -p HOST_PORT_NO:CONTAINER_NO [CONTAINER_ID/Name]
    # allows you to map a port on your host machine to a port on the Docker container
    # maps port from the container to port on the host machine.

7. docker run -P [CONTAINER_ID/Name]
    # Radmon port mapping
    # range 32768 to 60999.

8. docker save -o <img_name> tar/zip <img_id>
    # Archive file and save it in local system 

9. docker load -i <local_file name>.tar
    # recover tar file 

10. docker images -q
    # used to list the IDs of all Docker images

11. docker image list
    # list images

12. docker create <image_name>
    # create container and perform pull operation but it will not start

13. docker stop $(docker ps -a -q)
    # stop all containers

14. docker rm $(docker ps -a -q)
    # delete all stop containers

15. docker rmi -f $(docker images -q)
    # delete all images

16. docker ps -aq | xargs decker stop
    # stop all running containers

17. docker ps -aq | xargs decker stop | xargs docker rm
    # stop all running containers and remove



