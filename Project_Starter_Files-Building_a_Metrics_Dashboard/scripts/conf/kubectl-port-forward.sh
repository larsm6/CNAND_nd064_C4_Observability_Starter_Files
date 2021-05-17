#!/bin/bash
#export PATH=$PATH:/usr/local/bin

#Forward ports
echo "**** Forward Ports"

prometheus_grafana_pod_name="$(kubectl get pod -n monitoring | grep -o '\<prometheus\-grafana\-[a-z0-9]\{2,\}\-[a-z0-9]\{2,\}\>')"

kubectl_port_forward_grafana_cmd="kubectl -n monitoring port-forward $prometheus_grafana_pod_name 3000"

# Forward Grafana Port in Background
$kubectl_port_forward_grafana_cmd &

echo "**** End Forwarding Ports"
