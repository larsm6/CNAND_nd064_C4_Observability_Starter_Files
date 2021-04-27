#!/bin/bash

# save project path
project_path=$(pwd)

# initialize namespace
sh ./scripts/conf/kubectl-namespace.sh

# initialize helm
sh ./scripts/conf/helm.sh

# initialize Jaeger
sh ./scripts/conf/jaeger.sh

# initialize Jaeger cluster-wide visibility
sh ./scripts/conf/jaeger-cluster-visibility.sh

# Create Load Balancer
sh ./scripts/conf/kubectl-create-loadbalancer.sh

# Initialize App
sh ./scripts/initialize-app.sh

# Get Pods
sh ./scripts/conf/kubectl-get-pods.sh

# Forward Grafana Port in Background
sh ./scripts/conf/kubectl-port-forward.sh


