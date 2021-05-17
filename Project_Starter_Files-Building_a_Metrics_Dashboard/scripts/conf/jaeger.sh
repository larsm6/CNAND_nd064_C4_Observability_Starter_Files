#!/bin/bash
echo "**** Begin installation of Jaeger"
# export PATH=$PATH:/usr/local/bin

#Create Namespace observability
echo "**** Create Namespace observability"
kubectl create namespace observability

echo "**** Install CRD"
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/crds/jaegertracing.io_jaegers_crd.yaml

echo "**** Install Service Account"
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/service_account.yaml

# Configure Roles and Role Bindings
echo "**** Configure Roles and Role Bindings"
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/role.yaml
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/role_binding.yaml

echo "**** Install Jaeger Operator"
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/operator.yaml

kubectl_port_forward_jaeger_cmd="kubectl -n observability port-forward svc/jaeger-operator-metrics 16686"

#Forward application port in background
# $kubectl_port_forward_jaeger_cmd &

echo "**** End installation of Jaeger"
