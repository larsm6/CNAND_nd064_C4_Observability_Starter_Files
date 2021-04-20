#!/bin/bash
echo "**** Begin configuring kubectl"
export PATH=$PATH:/usr/local/bin
#Create Namespace monitoring
kubectl create namespace monitoring
# /usr/local/bin/kubectl create namespace monitoring
echo "**** End configuring kubectl"
