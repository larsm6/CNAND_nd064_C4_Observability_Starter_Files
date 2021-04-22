kubectl apply -f ./hotrod-app/hotrod-jaeger.yml
kubectl apply -f ./hotrod-app/hotrod-service.yml
kubectl apply -f ./hotrod-app/hotrod-deployment.yml

kubectl -n observability port-forward service/hotrod-query 16686
