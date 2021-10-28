# Kubernetes Configuration

All the configuration in **kubernetes cluster** goes through a master node with the process called **API Server**. <br>
Configuration requests(yaml format) to the **API SERVER** which is the main entry point to the **kubernetes Cluster** can be established via three different **Kubernetes clients** which are.

- UI ( Kubernetes Dashboard) 
- API (Script or curl command)
- CLI (kubectl)

<img src="/media/clients.png" alt="Girl in a jacket" width="240" > 

## Configuration file format
The format of the configruation files is `.yaml` where each configuration file has **3 parts**.

1. metadata
2. specification
3. status
    - It is automatically generated and added by Kubernetes. Kubernetes will always the **desired** and **actual** state of that componenet. If they do not match, kubernetes will know that there is something to be fixed. K8s get the status data from **etcd**. Etcd hold at any time the current status of any kuberneted component and that's where the status information comes from. 


<img src="/media/config.png" alt="Girl in a jacket" width="640" > 

- Attributes of "spec" are **specific** to the kind.

## Deployment configuration file
Deployment is the **blueprint** for creating **Pods**.
```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: my-app
  labels:
    app:my-app
spec:
    replicas:2
    selector:
        matchLabels:
            app:my-app
    template:
        metadata:
            labels:
            app: nginx
        spec:
            containers:
                - name_ nginx
                image: inginx:1.16
                env:
                    - name:SOME_ENV
                    value:$SOME_ENV
                ports:
                - containerPort: 8080
```

### Blueprint for pods
spec > template :
- Has its own **metadata** and **spec** section.
- Applies to Pod.
- What is the name of the container, which port it should open etc.
```
        spec:
            containers:
                - name_ nginx
                image: inginx:1.16
                ports:
                - containerPort: 8080

```

## Service configuration file
```
apiVersion: v1
kind: Service
metadata:
  name : nginx-service
spec:
  selector:
    app: nginx
  ports:
```

## Secret Configuration File
``` 
apiVersion: v1
kind: Secret
metadata:
    name: mongodb-secret
type: Opaque
data:
    mongo-root-username: fasfasfasd
    mongo-rot-password: dgdsg34dad  
```
- kind: Secret
- metadata/name: a random name
- type: "opaque" - default for arbitrar key-value paris
- data: the actual contents in the key-value pairs.

Note:
However the values in key/value pairs can not be plain text. They have to be 
`echo -n '1234567' | base64 `

Notes:
- Since the config file is going to be applied your application, it's a good practice to store the config file with your code. 



