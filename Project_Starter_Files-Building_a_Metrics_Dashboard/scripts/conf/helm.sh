#!/bin/bash
echo "**** Begin configuring helm"
export PATH=$PATH:/usr/local/bin

echo "**** Adding prometheus-community to helm"
# Add Premetheus to the helm repo
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

# helm repo add stable https://kubernetes-charts.storage.googleapis.com # this is deprecated
echo "**** Adding Stable kubernetes-charts to helm"
helm repo add stable https://charts.helm.sh/stable

echo "**** Update Helm Repo"
helm repo update

echo "**** Installing kube-prometheus-stack via helm"
helm install prometheus prometheus-community/kube-prometheus-stack --namespace monitoring --kubeconfig /etc/rancher/k3s/k3s.yaml

echo "**** End configuring helm"
