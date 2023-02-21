

# start minikube 
minikube start --nodes 3 -p my-nodes
minikube dashboard -p my-nodes

# create namespace (test)
kubectl apply -f namespace.yaml

# create ingress controller
minikube -p my-nodes addons enable ingress

# create secret
kubectl apply -f secret.yaml

# create deployment 
kubectl apply -f deployment-mysql.yaml
kubectl apply -f deployment-wordpress.yaml
kubectl apply -f deployment-pma.yaml


