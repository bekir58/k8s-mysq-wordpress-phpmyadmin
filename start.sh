

# start minikube 
sleep 1
echo "======================================================="
echo "############## minikube wird gestartet ############"
echo "======================================================="
sleep 1
minikube start --nodes 3 -p my-nodes

sleep 1
minikube status -p my-nodes


./deploy.sh

echo "======================================================="
echo "########## minikube dashboard wird gestartet ##########"
echo "======================================================="
sleep 2
minikube dashboard -p my-nodes
echo "======================================================="
echo "########## minikube dashboard ist gestartet ###########"
echo "======================================================="

