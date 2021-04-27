#!/bin/bash

# More detailed introduction to Jaeger can be found on the following page:
# https://www.jaegertracing.io/docs/1.22/operator/

# Create Jaeger Hotrod
echo "***** Create Jaeger Hotrod"
kubectl -n observability apply -f ./hotrod-app/hotrod-jaeger.yml

# Get Deployments
echo "***** Create Hotrod Service"
kubectl apply -f ./hotrod-app/hotrod-service.yml

# Deploy Hotrod Applicaiton
echo "***** Deploy Hotrod Application"
kubectl apply -f ./hotrod-app/hotrod-deployment.yml

# Get Pods
echo "***** Get Pods"
kubectl get pods

# Get Services
echo "***** Get Services"
kubectl get services

# Get Deployments
echo "***** Get Deployments"
kubectl get deployments


# Get Pods
echo "***** Get Pods from namespace observability"
kubectl -n observability get pods

# Get Services
echo "***** Get Services from namespace observability"
kubectl -n observability get services

# Get Deployments
echo "***** Get Deployments from namespace observability"
kubectl -n observability get deployments

echo "Forward Port of hotrod-query Load-Balancer"
kubectl -n observability port-forward service/hotrod-query 16686
