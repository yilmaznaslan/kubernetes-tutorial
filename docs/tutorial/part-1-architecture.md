# Kubernetes Architecture
Kubernetes cluster is made up with 
- at least one master node and
- connected a couple of worker nodes, where each nod has a **kubelet**process running on it.

<img src="/media/architecture.png" alt="Girl in a jacket" width="640" > 

## Worker Node 
Worker nodes do the actual work where each node has multiple Pods on it.

### Processes

3 process must be installed on every node

1. Container runtime 
2. Kubelet
3. Kube proxy

#### Kubelet
Kubelet interacts with both the container and node
.It is a service that actually runs the pods using the **container runtime**.

----
## Master Node 
### Processes
4 process run on every master node !
1. API Server
2. Scheduler
3. Controller manager
4. etcd

#### API Server
- cluster gateway
- Acts as agtekeepr for authentication !


#### Scheduler
- Where to put the Pod ? 
- Scheduler just decied on which Node new Pod should be scheduled. It is Kubelet that actually puts Node on a 


#### Controller Manager


#### etcd
- etcd acts as a Clusterbrain.
- Cluster changes get stored in the key value store.

