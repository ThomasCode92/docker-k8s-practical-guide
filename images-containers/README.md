# Docker Images & Containers - Core Building Blocks

## Key Topics

- Two Core Concepts: Images & Containers
- Using Pre-built & Custom Images
- Creating & Managing Containers

## Images & Containers

**Image:** Templates/ Blueprints for container & Contains code + required tools/ runtime<br />
**Containers:** The running "unit of software"

![docker_engine](./docs/image-container.excalidraw.png)

## Running Docker Images

**Using a Prebuilt Image**<br />
To start the NodeJS image from [Docker Hub](https://hub.docker.com/_/node), use one of the following commands:

```bash
  docker run node
  docker run -it node   # Run with interactive shell
```

**Building and Running a Custom Image**<br />
Follow these steps to build an image from a Dockerfile and run a container from it:

1. Build the Docker Image: `docker build .`<br />
   Ths will build an image from a Dockerfile and output an `ImageID` for the created image.<br />
2. Run a Container from the Built Image: `docker run -p 8000:800 <ImageID>`<br />
   Use the `ImageID` to run a container from the built image and map port 8000 on the host to port 80 in the container.

This process will create and run a container based on the specifications provided in a Dockerfile, and it will map port 8000 on the local machine to port 80 in the container.

## Managing Images & Containers

**Starting and Stopping Containers**<br />
To start a stopped container, follow these steps:

1. List all containers, including stopped ones, using `docker ps -a`.
2. Identify the desired container and copy its name or ID.
3. Start the container with the command: `docker start <Container_Name_or_ID>`.

To stop a running container, follow these steps:

1. List all running containers using: `docker ps`.
2. Identify the desired container and copy its name or ID.
3. Stop the container with command: `docker stop <Container_Name_or_ID>`

When a container is started with the _--rm_ flag, it will be automatically removed once it stops.

**Interactive Mode**<br />
To start a container in interactive mode, use the _-it_ flag. This flag allows you to interact with the container’s terminal. Example command: `docker run -it <Container_Name_or_ID>`

**Deleting Images & Containers**<br />

- Delete a stopped container: `docker rm <Container_Name_or_ID>`.
- Delete an unused image: `docker rmi <Image_Name_or_ID>`.
- Delete all unused images: `docker image prune`.

**More Useful Commands**
| Images | Command or Flag | Containers | Command or Flag |
| ------------------- | -------------------------- | ------------------------------- | ------------------------- |
| Can be **tagged** | _-t, docker tag_ | Can be **named** | _--name_ |
| Can be **listed** | _docker images_ | Can be **configured in detail** | see _--help_ |
| Can be **analyzed** | _docker image inspect_ | Can be **listed** | _docker ps, docker ps -a_ |
| Can be **removed** | _docker rmi, docker prune_ | Can be **removed** | _docker rm_ |

Add `--help`to see all options. A more complete list of commands can be found in [this cheat sheet](./docs/cheat-sheet.pdf).

## Docker Hub

To create an image and push it to a personal [Docker Hub](https://hub.docker.com/) account, follow these steps. First, create an account if one does not exist, then use the username in the commands below:

```bash
   docker login # log in to Docker Hub
   docker build -t <ImageName> .
   docker tag <ImageName> <UserName>/<ImageName>
   docker push <UserName>/<ImageName>

    # To download an image
   docker pull <UserName>/<ImageName>
```

Replace `<UserName>` with the Docker Hub username and `<ImageName>` with the desired name for the image.

## More about Images

**Image Layers**
<img src="./docs/layers.excalidraw.png" />

**Understanding Image Tags**<br />
<img src="./docs/image-tag.excalidraw.png" />
