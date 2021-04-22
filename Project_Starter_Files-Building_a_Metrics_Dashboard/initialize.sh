#!/bin/bash

# initialize namespace
sh ./scripts/conf/kubectl-namespace.sh

# initialize helm
sh ./scripts/conf/helm.sh

# initialize Jaeger
sh ./scripts/conf/jaeger.sh

