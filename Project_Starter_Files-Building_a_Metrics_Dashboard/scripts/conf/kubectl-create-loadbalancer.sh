#!/bin/bash
echo "**** Create Load Balancer: prometheus-grafana"
export PATH=$PATH:/usr/local/bin

# create a load balancer
kubectl patch svc "prometheus-grafana" --namespace "monitoring" -p '{"spec": {"type": "LoadBalancer"}}'

echo "**** End creating Load Balancer"
