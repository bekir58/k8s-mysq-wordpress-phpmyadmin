

echo "======================================================="
echo "######### minikube services werden aufgerufen #########"
echo "======================================================="
minikube service -p my-nodes list



echo "Enter service name : "
read service_name
minikube service -p my-nodes -n test $service_name

