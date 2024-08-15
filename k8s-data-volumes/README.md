# Managing Data & Volumes with Kubernetes

## Key Concepts

- Volumes
- Persistent Volumes & Persistent Volumes Claims
- Environment Variables

## Kubernetes and Volumes

### Understanding "_State_" & Volumes

![state](./docs/state.excalidraw.png)

### Volumes in Kubernetes

![volumes](./docs/volumes.excalidraw.png)

Volumes managed by Kubernetes are not exactly the same as volumes managed by Docker.<br />To be precise, the idea is the same but Kubernetes Volumes are a bit more "powerful".

| Kubernetes Volumes                              | Docker Volumes                                  |
| ----------------------------------------------- | ----------------------------------------------- |
| Supports many different Drivers and Types       | Basically no Driver / Type Support              |
| Volumes are not necessarily persistent          | Volumes persist until manually cleared          |
| Volumes survive Container restarts and removals | Volumes survive Container restarts and removals |
