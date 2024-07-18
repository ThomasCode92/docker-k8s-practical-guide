# Deploying Docker Containers

**From Development to Production**

## Key Topics

- Deployment Overview & General Process
- Deployment Scenarios, Examples & Problems

## Development to Production

_What works on your machine (in a containter) will also work after deployment!_<br />
**Things to watch out for:**

- Bind Mounts shouldn’t be used in Production!
- Containerized apps might need a build step (e.g. React apps)
- Multi-Container projects might need to be split (or should be split) across multiple hosts/ remote machines
- Trade-offs between control and responsibility might be worth it

## Basic Example - Standalone NodeJS App

Just NodeJS, no database, nothing else => one image & container.<br />

**Possible Deployment Approach:** Install Docker on a remote host (e.g. via SSH), push and pull image, run container based on image on remote host.

There are hundreds and thousands of Docker-supporting hosting providers out there. The 3 major ones are Amazon Web Services, Microsoft Azure and Google Cloud.

![basic-example](./docs/basic-example.excalidraw.png)

**Deploy to AWS EC2**<br />
AWS EC2 is a service that allows the user to spin up and manage his own remote machines.<br />
This is are the necessary steps:

1.  Create and launch EC2 instance, VPC and security group
2.  Configure security group to expose all required ports to WWW
3.  Connect to instance (SSH), install Docker and run container

## Useful Resources

- [Amazon Web Services - Home Page](https://aws.amazon.com/)
- [Amazon Web Services - Documentation](https://docs.aws.amazon.com/)
- [Amazon EC2 - Documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html)
- [Getting Started with AWS](https://academind.com/tutorials/aws-the-basics)
