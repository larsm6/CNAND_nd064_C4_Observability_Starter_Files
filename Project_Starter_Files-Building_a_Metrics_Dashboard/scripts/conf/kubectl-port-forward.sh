#!/bin/bash
export PATH=$PATH:/usr/local/bin

#Forward ports
echo "**** Forward Ports"


kubectl_port_forward_grafana_cmd="kubectl port-forward svc/prometheus-grafana --address 0.0.0.0 3000:80 -n monitoring"

# Forward Grafana Port in Background
$kubectl_port_forward_grafana_cmd &

echo "**** End Forwarding Ports"
