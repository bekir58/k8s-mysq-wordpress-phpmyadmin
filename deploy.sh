

# create namespace (test)
kubectl apply -f namespace.yaml
echo "======================================================="
echo "############## namespace erstellt ################"
echo "======================================================="
sleep 2

# create ingress controller
minikube -p my-nodes addons enable ingress
sleep 2

# create secret
kubectl apply -f secret.yaml
echo "======================================================="
echo "############### secret erstellt ############### "
echo "======================================================="
sleep 2

# create deployment 
kubectl apply -f deployment-mysql.yaml
echo "======================================================="
echo "################# mysql deployed ################ "
echo "======================================================="
sleep 2
kubectl apply -f deployment-wordpress.yaml
echo "======================================================="
echo "############## wordpress deployed ############## "
echo "======================================================="
sleep 2
kubectl apply -f deployment-pma.yaml
echo "======================================================="
echo "############## phpmyadmin deployed ############# "
echo "======================================================="
sleep 2

