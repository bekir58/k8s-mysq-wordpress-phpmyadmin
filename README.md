
# mysql # phpmyadmin # wordpress

# wir starten 1 master und 2 worker nodes
minikube start --nodes 3 -p my-nodes
* kubectl get nodes      
* minikube status -p my-nodes
* minikube dashboard
* 

# create namespace 
* kubectl apply -f namespace.yaml

# create ingress controller
* minikube -p my-nodes addons enable ingress
* kubectl get services -A

# create secret
kubectl apply -f secret.yaml

# create deployment 
* kubectl apply -f deployment-mysql.yaml
* kubectl apply -f deployment-wordpress.yaml
* kubectl apply -f deployment-pmy.yaml

# port-forwarding
* kubectl port-forward deployment/wp-deployment -n test 8080:80
* kubectl port-forward deployment/phpmyadmin -n test 8080:8080





