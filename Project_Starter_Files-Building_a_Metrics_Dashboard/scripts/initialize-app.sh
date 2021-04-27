#!/bin/bash

echo "**** Initialize Application"
export PATH=$PATH:/usr/local/bin

# save project path
project_path=$(pwd)

# navigate to sample-app/manifests/
cd manifests

# Initialize the application.
kubectl apply -f app/

kubectl_port_forward_application_cmd="kubectl port-forward svc/frontend-service 8080:8080"

#Forward application port in background
$kubectl_port_forward_application_cmd &

cd $project_path