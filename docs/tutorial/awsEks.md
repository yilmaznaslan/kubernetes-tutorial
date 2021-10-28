# AWS Elastic Kubernetes Service(EKS)

## What is EKS
EKS is a managed  kubernetes cluster that means AWS will manage the master nodes for you. It will create the master nodes. It will install all the necessary application on them like container tunme, kubernetes master proceses
- it will scale and do the backups.

If you have a small team of poeple then usually its a good idea to let the platform do this maintenane for you so you can focus on deploying your applications in kubernetes without worrying about whether masternodes are properly backed up etc.
This means you can only create and worry about the worker nodes.


## How to use EKS
<img src="https://docs.aws.amazon.com/eks/latest/userguide/images/what-is-eks.png" alt="Girl in a jacket" width="640" > 


In order to create a kuburnetes cluster you need to follow the following steps:

1. Preparation steps
    - Create AWS account
    - Create a VPC
    - Create an IAM Role with security user
2. Create Cluster Control Plane
    - Choose cluster name, k8s version
    - Choose region and VPC for you cluster
    - Set security for your cluster.

3. Create Worker Node
on AWS   Worker nodes wil be EC 2 isntances with certain CPU , RAM and stroage resources.
- Create a Node Group(group of nodes)
- Choose cluster it will attach to 
- Define Security Group
- Define max and min number of Nodes (Autoscaling)