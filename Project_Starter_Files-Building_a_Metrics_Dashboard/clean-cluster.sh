kubectl -n default delete namespaces --all --grace-period 0 --force
kubectl -n default delete jaeger --all
kubectl -n default delete deployments --all
kubectl -n default delete services --all
kubectl -n default delete pods --all
# kubectl -n default delete clusterrolebindings --all
# kubectl -n default delete clusterroles --all