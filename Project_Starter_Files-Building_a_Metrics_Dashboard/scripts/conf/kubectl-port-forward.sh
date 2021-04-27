#!/bin/bash
echo "**** Begin test kubectl"
export PATH=$PATH:/usr/local/bin

#Forward ports
echo "**** Forward Ports"
kubectl port-forward svc/prometheus-grafana --address 0.0.0.0 3000:80 -n monitoring

echo "**** End Forwarding Ports"
