#!/bin/bash
echo "**** Begin test kubectl"
export PATH=$PATH:/usr/local/bin

echo "**** Get Pods:"
kubectl get pods --namespace=monitoring

#Forward ports
echo "**** Forward Ports"
kubectl port-forward prometheus-prometheus-kube-prometheus-prometheus-0 --address 0.0.0.0 3000:80 -n monitoring

echo "**** End test kubectl"