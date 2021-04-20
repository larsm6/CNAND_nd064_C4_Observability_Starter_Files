#!/bin/bash
echo "**** Begin installing helm"
export PATH=$PATH:/usr/local/bin

#Install
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
echo "**** End installing helm"
