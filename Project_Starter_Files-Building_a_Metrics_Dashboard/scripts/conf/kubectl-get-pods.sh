#!/bin/bash
echo "**** Begin test kubectl"
export PATH=$PATH:/usr/local/bin

echo "**** Get Pods:"
kubectl get pods --namespace=monitoring


# create a load balancer
echo "**** Create Load Balancer: prometheus-grafana"
kubectl patch svc "prometheus-grafana" --namespace "monitoring" -p '{"spec": {"type": "LoadBalancer"}}'

#Forward ports
echo "**** Forward Ports"
kubectl port-forward svc/prometheus-grafana --address 0.0.0.0 3000:80 -n monitoring

# kubectl port-forward prometheus-grafana-5dfb9cf69f-hpv9p --address 0.0.0.0 3443:443 -n monitoring
# kubectl port-forward prometheus-prometheus-kube-prometheus-prometheus-0 --address 0.0.0.0 3000:9090 -n monitoring

echo "**** End test kubectl"
