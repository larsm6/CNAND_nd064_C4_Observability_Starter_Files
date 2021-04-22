
# Create Jaeger Hotrod
echo "***** Create Jaeger Hotrod"
kubectl -n observability apply -f ./hotrod-app/hotrod-jaeger.yml

# Get Deployments
echo "***** Create Hotrod Service"
kubectl -n observability apply -f ./hotrod-app/hotrod-service.yml

# Deploy Hotrod Applicaiton
echo "***** Deploy Hotrod Application"
kubectl -n observability apply -f ./hotrod-app/hotrod-deployment.yml

# Get Pods
echo "***** Get Pods"
kubectl -n observability get pods

# Get Services
echo "***** Get Services"
kubectl -n observability get services

# Get Deployments
echo "***** Get Deployments"
kubectl -n observability get deployments

echo "Forward Port of hotrod-query Load-Balancer"
kubectl -n observability port-forward service/hotrod-query 16686
