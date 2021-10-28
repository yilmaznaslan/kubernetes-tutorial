# Kubernetes Components
When you deploy Kubernetes, you get a **cluster**. Basic  components of a kubernetes cluster are 

- Node & Pod
- Service & Ingress
- ConfigMap & Secret
- Volumes
- Deployment & statefulSet

<img src="https://d33wubrfki0l68.cloudfront.net/2475489eaf20163ec0f54ddc1d92aa8d4c87c96b/e7c81/images/docs/components-of-kubernetes.svg" alt="Girl in a jacket" width="740" > 


A Kubernetes cluster consists of a set of **worker nodes** that run containerized applications. Every cluster has at least one worker node.

- The worker node(s) host **Pods** that are the components of the application workload.
- The master node(s) manages the worker nodes and pods in the cluster.

## Node & pod
### Node
Nodes contain pods which has container running environments.
Node is simple server a physical or virtual machine 

### Pod
- Smallest unit of K8s
- It creates running environment for containers. Basically it is a abstraction of container.
- You can run multiple containers in one pod but ussually 1 application container per Pod.
- Kubernetes offers a virtual network. That means each Pod gets itw own IP address not the continaer. So each Pod can communicate with each toher through these IP addresses(these are not public IP addresses.)
- Pods are **ephemeral** which means that they can die easly. When they die new ones will get created and will get a new IP address.

 <img src="/media/pod.png" alt="Girl in a jacket" width="640" > 

## Service & Ingres
Pods communicate with each other using Service. Service has 2 functionality
- Service is a static/permantent IP address that can be attached to each pod. Each pod will have its own **service**.
- Service is also a load balancer which means that the service will actually catch the request and forward it to whichever part is least busy.
- Lifecycle of Pod and Service is not connected. So even if the pods dies , the service and its IP adress will stay.
Load balancer

 <img src="/media/service.png" alt="Girl in a jacket" width="640" > 

### External Service
External services that opens the communication from external sources.

### Internal Service
But for databases, you don't want it to be open to the public requests. For such Pods you create internal services.
### Ingres
A request first goes to Ingres which forwards to the service.

## ConfigMap & Secret
### ConfigMap

- External configuration of your application
- It usually contains configruation data such as DB URL. It is usually connected to the Pod so that pod gets the data that config map contains.
- ConfigMap is for non-confidential data only !

### Secret
- It is just like ConfigMap but it is used to store secret data, credentials.
- It is stored not in plane text format but base64 coding format.
- Just like configMap you connect Pod to it so that Pod sees the data.

<img src="/media/secret-configMap.png" alt="Girl in a jacket" width="640" > 


## Volume 
If the database container/pod restarts all the gets lost.  
- Storage on local machine
- or remote outside of K8's cluster.
<img src="/media/volume.png" alt="Girl in a jacket" width="640" > 

## Deployment & statefulSet
### Deplyoment

If an application pod dies it would create a downtime where a user can not reach to application even in the production it can happen. The advantage of **distributed systems and containers** is instead of relying on just one applciation and one database, it is possible to replicate everything on multiple servers.

<img src="/media/deployment.png" alt="Girl in a jacket" width="640" > 

In kubernetes you don't create replicas, you would define a blueprint so called "**Deployment**", which is another component of kubernetes.

Layers of Abstruction:

- Deployment manages a replicaset
- RepilcaSet manages all the replicas of that pod
- Pod is an abstraction of a container
- Container

Note : Everything below **Deployment** is handled by kubernetes.
Note : Database  pods can not be replicated using **deployments**, because dabase has a state which is its data. Meaning that if there are two replicas of the database the qould all need to access the same shared data storage ant there would need a mechanism that manages which pods are currently writing to that storage.


### Stateful Set
So any Statefull application should be created using **StatefulSet** not **Deployments**.
- StatefulSet's are just like deployments they take care of the repilcations
- It is not a easy task to have statefulSet thats why it is common practice to host databases often outside of K8s cluster.



## K8s Level of Abstraction

put here image or info