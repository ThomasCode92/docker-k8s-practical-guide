# Kubernetes - Core Concepts

## Key Concepts

- Kubernetes & Testing Environment Setup
- Working with Kubernetes Objects
- Examples!

## Installation

![installation](./docs/installation.excalidraw.png)

Setting up a local (development cluster): [minikube](https://minikube.sigs.k8s.io/docs/)<br />
The Kubernetes command-line tool: [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)

## Kubernetes Objects

![kubernetes objects](./docs/objects.excalidraw.png)

### The "Pod" Object

![pod objects](./docs/pod.excalidraw.png)

### The "Deployment" Object

![deployment object](./docs/deployment.excalidraw.png)

### The "Service" Object

![service object](./docs/service.excalidraw.png)

## Kubernetes in Action

### Imperative Approach

Individual commands are executed to trigger certain Kubernetes actions. It's comparable to using `docker run` only.

```bash
## create an image (e.g. kub-first-app) and push it to docker hub
docker build -t kub-first-app .
docker tag kub-first-app <docker_hub>/kub-first-app
docker push <docker_hub>/kub-first-app

## create a deployment
kubectl create deployment first-app --image=<docker_hub>/kub-first-app
kubectl get pods              # view all pods

## create a service
kubectl expose deployment first-app --type=LoadBalancer --port=8080
kubectl get services          # view all services
minikube service first-app    # open the application

## update deployment
### an image with a new tag needs to be pushed first
kubectl set image deployments/first-app kub-first-app=<docker_hub>/kub-first-app:tag
```

### Declarative Approach

A config file is defined and applied to change the desired state. Comparable to using `docker compose` with compose files.

### Behind the Scenes

![behind the scenes](./docs/behind-the-scenes.excalidraw.png)
