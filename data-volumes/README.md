# Managing Data & Working with Volumes

## Key Topics

- Understanding Different Kinds of Data
- Images, Containers & Volumes
- Using Arguments & Environment Variables

## Different Kinds of Data

![data](./docs/data.excalidraw.png)

## Volumes

### Understanding Volumes

Volumes are _folders on the host machines_ hard drive which are _mounted_ ("made available", mapped) _into containers_

![volumes](./docs/volumes.excalidraw.png)

Volumes persist if a container shuts down. If a container (re-)starts and mounts a volume, any data inside of that volume is available in the container.<br />
A container can write data into a volume and read data from it.
