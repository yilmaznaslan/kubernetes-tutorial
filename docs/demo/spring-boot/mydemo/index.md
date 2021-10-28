# Simple spring boot kubernetes app

Steps:

1. Create and run the spring boot app locally
2. Package the application
   1. run maven install. Check that .jar file is under `target/myemo-0.0.1-SNAPSHOT.jar`.
3. Create a DockerFile and create an image from it
   1. EXPOSE the port number
4. Test the docker image 
5. Push the docker image to the docker hub "container repository".

## Create a spring boot project

## Start the minikube
`minikube start`

## Create the first pod
`kubectl create deployment my-demo-depl --image=yilmaznaslan/mydemo`