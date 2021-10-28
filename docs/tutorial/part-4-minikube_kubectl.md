# Minikube & Kubectl
Usually in kubernetes work, when you set up a production cluster it will consists of Multiple Master and Worker Nodes, where each node represents a virtuel or physical machine. <br>

<img src="/media/general.png" alt="Girl in a jacket" width="640" > 

So if you want to test something on your local environment or if you want to try somehtng out very quickly for example deploying a new application, setting up a cluster like this would be imposible if you don't have the enough resources such as CPU, RAM etc.

Exactly for this use-case there is opensource tool called **Minikube**.

## Minikube
Minikube is a one Noe cluster where master and worker node processes run on one node and this node will have a docker runtime environment pre-installed to able to trun the containers/pods

- Creates Virtual Box on your laptop
- Node runs in that Virtual Box
- 1 Node K8s cluster
- for testing purposes
- Minikube has a docker pre-installed.

<img src="/media/minikube.png" alt="Girl in a jacket" width="640" > 


## Kubectl
Now you have virtal node on your local machne represnets the minikube. kubectl is the way to communiate the kuberentes cluster/ API Server.
Kubectl is used to communicate with any type of cluster minicube cluster or cloud cluster.


An important thing here to note is that **Kubectl** is not only used for **Minikue Cluster**. It is the tool to use interact with any type of  **Kubernetes Cluster** setup such as Cloud Cluster, Hybrid Cluster of Miniube cluster.

<img src="/media/kubectl.png" alt="Girl in a jacket" width="640" > 

### Commands
#### CRUD commands

##### Create Pod/Deployment
Note: In kubernetes you don't actually create Pods, but you create deployments. Deployments are abstracturn over Pods

##### Usage
- `kubectl create deployment NAME --image=image`

##### Example
- `kubectl create deployment nginx-depl --image=nginx`

##### Info
when you create a deplyoemtn there are lots of options to enter. In practicaly the way to do that is using config files using apply

#### Edit sdeployment

- `kubectl edit deployment nginx-depl` returns auto generated configuration file with default values.

#### Delete Deployment
``kubectl delete deployment mongo-depl``

`kubectl delete -f nginx-service.yaml`


##### Status of different K8s componenets

`kubectl get nodes`
- Everythins runs on master node.

`kubectl get services`

`kubectl get deployment`

`kubectl get pod`

`kubectl get replicaset`

`kubectl get deployment nginx-deployment -o yaml`

`kubectl get deployment nginx-deployment -o yaml > nginx-deployment-result.yaml`

`kubectl get namespace`

#### Debugging pods
- `kubectl describe xxxx`

- `kubectl logs`

- `kubectl exec -it mongo-depl-333434 -- bin/bash`


#### Use configuration file for CRUD
- `kubectl apply -f nginx-deployment.yaml`


## Installation
Minikube needs virtualization because it is going to run in a virtual box setup or some hypervisor.
1. Install Hypervisor
    - Hyperkit, VirtualBox
    - ``
2. Install Minicube
    - ``brew install minikube``


### Start up

1. Tell Minikube which Hypervisor it should use.
    - `minikube start --vm-driver=hyperkit`
    - Now kubectl  is now configured to use 'minikube', which means the minikube cluster is set up and kubectl command is also connected with the minikube cluster to interact with it.
2. Check if the kubectl is running
    - `minikube status`
    - `kubectl get nodes`
    - `kubectl version`
