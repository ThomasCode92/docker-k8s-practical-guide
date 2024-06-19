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

  docker ps -a          # List all processes
```

**Building and Running a Custom Image**<br />
Follow these steps to build an image from a Dockerfile and run a container from it:

1. Build the Docker Image: `docker build .`<br />
   Ths will build an image from a Dockerfile and output an `ImageID` for the created image.<br />
