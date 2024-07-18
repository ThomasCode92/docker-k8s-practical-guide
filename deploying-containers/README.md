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
