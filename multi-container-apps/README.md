# Building Multi-Container Applications with Docker

## Key Topics

- Combining Multiple Services to One App
- Working with Multiple Containers

## Target Application

![target application](./docs/target.excalidraw.png)

**MongoDB Database**<br />
`docker run -p 27017:27017 --rm -d --name mongodb mongo`

**NodeJS Backend**<br />
`docker build -t goals-node .`<br />
`docker run -p 80:80 --rm -d --name goals-backend goals-node`

**ReactJS Frontend**<br />
`docker build -t goals-react .`<br />
`docker run -p 3000:3000 --rm -d --name goals-frontend goals-react`
