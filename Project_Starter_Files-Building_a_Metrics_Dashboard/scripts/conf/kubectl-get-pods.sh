#!/bin/bash
echo "**** Begin test kubectl"
# export PATH=$PATH:/usr/local/bin

echo "**** Get Pods:"
kubectl get pods --namespace=monitoring

echo "**** End test kubectl"
