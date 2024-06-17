# Docker Images & Containers - Core Building Blocks

## Key Topics

- Two Core Concepts: Images & Containers
- Using Pre-built & Custom Images
- Creating & Managing Containers

## Images & Containers

**Image:** Templates/ Blueprints for container & Contains code + required tools/ runtime<br />
**Containers:** The running "unit of software"

![docker_engine](./docs/image-container.excalidraw.png)

## Commands

**Use and Run an Image**<br />
To start the NodeJS image from [Docker Hub](https://hub.docker.com/_/node), use one of the following commands:

```bash
  docker run node
  docker run -it node   # Run with interactive shell

  docker ps -a          # List all processes
```
