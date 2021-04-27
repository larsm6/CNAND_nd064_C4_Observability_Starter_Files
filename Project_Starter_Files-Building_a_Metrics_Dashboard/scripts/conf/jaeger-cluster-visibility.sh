#!/bin/bash

echo "****** Start giving Jaeger cluster-wide visibility"

kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/cluster_role.yaml
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/cluster_role_binding.yaml

echo "****** End giving Jaeger cluster-wide visibility"