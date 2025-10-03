# ECS: Elastic Container Service

## What is ECS:

- Managed service to run Docker containers
- There're two options for the deployment:
    1. Serverless (Fargate)
    2. Managed (EC2)

- Supports for auto-scaling to handle variable volume: high-traffic, memory requiements
- Great for adhoc jobs or full-scale services

## Key Terms

- **Task**
    - The lowest level of building block of ECS: Runtimes instances
    - This tells how to spin up a container

- **Task Definitions**
    - Templates for your **Tasks**
    - This is where you specify your Docker image, Memory/CPU requirements, etc

- **Container**
    - Virtualized instance that run your **Tasks**
    - This is only applied to **EC2** as in **Fargate** we only care about **Task Definitions**

- **Cluster**
    - This is a abstract resource which takes the **Task** and spins up the containers
    - **EC2**: A group of containers which run **Tasks**
    - **Fargate**: A group of **Tasks**

- **Service**
    - A task management system that ensures X amount of tasks are up and running
    - This points to a **Cluster** which has some **Task** definitions to be run
    - This is optional, but we need this for long-running tasks: web-services, compute-intentsive tasks


## References:

- [Overview of ECS](https://www.youtube.com/watch?v=I9VAMGEjW-Q)
- [AWS EC2 on ECS vs Fargate](https://www.youtube.com/watch?v=DVrGXjjkpig)
- [AWS VPC & Subnets](https://www.youtube.com/watch?v=TUTqYEZZUdc)
- [Setting up AWS VPC, Subnets, NAT, Internet GateWay, Route Table](https://www.youtube.com/watch?v=43tIX7901Gs&t=1892s)