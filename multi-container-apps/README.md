# Building Multi-Container Applications with Docker

## Key Topics

- Combining Multiple Services to One App
- Working with Multiple Containers

## Target Application

![target application](./docs/target.excalidraw.png)

**Network**<br />
Create network: `docker network create goals-net`

**MongoDB Database**<br />

```bash
  docker run \
    --network goals-net \
    -v data:/data/db \
    -e MONGO_INITDB_ROOT_USERNAME=user \
    -e MONGO_INITDB_ROOT_PASSWORD=secret \
    --rm -d --name mongodb \
    mongo
```

**NodeJS Backend**<br />
Build Image: `docker build -t goals-node .`<br />
Start Container: `docker run --network goals-net -p 80:80 --rm -d --name goals-backend goals-node`

**ReactJS Frontend**<br />
Build Image: `docker build -t goals-react .`<br />
Start Container: `docker run -p 3000:3000 --rm -d --name goals-frontend goals-react`
