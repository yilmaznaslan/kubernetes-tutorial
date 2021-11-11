# What is Kubernetes

- Open source ontainer **orchestration tool**
- Developed by **Google**
- Helps to manage containerized applications in different deployment environments(Physical machines, virtual machines or cloud environments)

## What Problem Kubernetes solve
The rise of microservices caused **increased usage of container technologies** because the containers actually offer the perffect host for small independent applications 
like microservices. Microserivce technology resulted in applications they're now comprised of hundreds or sometimes maybe even thousands of containers managing those loads of containers across multiple environments using **scripts** and **self-made tools** can be really complex and sometimes event impossible. So this specific scenerio caused the need for having container orchestration technologies.

- Trend from **Monolith** to **Microservices**
- Increased usage of containers

<img src="/media/k8sNeed.png" alt="Girl in a jacket" width="640" > 


## What features do orchestration tools offer

- **High Availability**
> High availability means that the application  has **no downtime** so it's **always accessible** by the users

- **Scalability** 
> Scalability(high performence) means you can scale your applications fast when you have more load on it and more users are trying to access. 
Also some way you scale down your application when the load goes down. So it makes your application more **flexiable to adjust to increasing or decreasing load.**

- **Disaster recovery**
> Disaster recovery means that if an infrestructure has some problems like data loss or the some servers explode or something bad happens, with the service center the infrastrcutre has to have some klind of mechanism to backup the data and to restore the latest state so that applciation doesn't actually lose any data.

## Contents
- What is Kubernetes
- [Components](part-1-components.md)
- Architecture
- Minikube and kubectl
- YAML configuration

