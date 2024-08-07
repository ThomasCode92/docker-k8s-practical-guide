# Getting Started with Kubernetes

## Key Concepts

- Understanding Container Deployment Challenges
- What is Kubernetes? And Why?
- Kubernetes Concepts & Components

## What and Why Kubernetes

### Deployment Problem

Deploying containers manually is challenging, error-prone, and often frustrating, even when not considering security and configuration issues. Here are some common problems:

- Containers can crash or go offline and require replacement.
- Traffic spikes may necessitate additional container instances.
- Incoming traffic needs to be evenly distributed across containers.

Services like _AWS ECS_ provide features such as container health checks, automatic re-deployments, autoscaling, and load balancing. However, relying on a specific cloud service can lead to vendor lock-in. Switching providers would require learning the unique services, configurations, and options offered by the new platform.

### Kubernetes to the Rescue

Kubernetes is an open-source system (and de-facto standard) for orchestrating container deployments. It offers features like automatic deployment, scaling & load balancing, management,...

![why k8s](./docs/why-k8s.excalidraw.png)

**What Kubernetes IS and IS NOT**<br />

- It’s not a cloud service provider - _It’s an open source project_
- It’s not a service by, or restricted to, a cloud service provider - _It can be used with any provider_
- It’s not just a software you run on some machine - _It’s a collection of concepts and tools_
- It’s not an alternative to Docker - _It works with (Docker) containers_
- It’s not a paid service - _It’s a free open-source project_

_Kubernetes is like Docker-Compose for multiple machine._

## Kubernetes Architecture

![core concepts](./docs/core-concepts.excalidraw.png)

**What Kubernetes Will Do:**<br />

- Create objects (e.g. Pods) and manage them
- Monitor Pods and re-create them, scale Pods etc.
- Kubernetes utilizes the provided (cloud) resources to apply your configuration / goal

**What Needs To Be Done / Setup:**<br >

- Create the Cluster and the Node Instances (Worker + Master Nodes)
- Setup API Server, kubelet and other Kubernetes services / software on Nodes
- Create other (cloud) provider resources that might be needed (e.g. Load Balancer, Filesystems)

### Worker Nodes

![worker nodes](./docs/worker-nodes.excalidraw.png)

### Master Node

![master node](./docs/master-node.excalidraw.png)

## Core Concepts

**Cluster:**<br />A set of _Node_ machines which are running the _Containerized_ Application (_Worker Nodes_) or control other Nodes (_Master Node_).<br />

**Nodes:**:<br />_Physical or virtual machine_ with a certain hardware capacity which hosts _one or multiple Pods_ and _communicates_ with the Cluster.<br />

**Master Node:**<br />Cluster _Control Plane, managing the Pods_ across Worker Nodes.<br />

**Worker Node:**<br />Hosts Pods, _running App Containers_ (+ _resources_).<br />

**Pods:**<br />Pods _hold the actual running App Containers_ + their _required resources_ (e.g. volumes).<br />

**Containers:**<br />Normal (Docker) Containers.<br />

**Services:**<br />A _logical set (group) of Pods_ with a unique, Pod- and Container-_independent IP address_.
