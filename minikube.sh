#!/bin/bash

#
# Minikube
#
curl -Lo minikube curl -Lo minikube https://storage.googleapis.com/minikube/release/latest/minikube-darwin-amd64
chmod +x minikube
sudo mv minikube /usr/local/bin

#
# Kubectl - Kubernetes command line interface
#
curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/v1.5.1/bin/darwin/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin

#
# Start minikube
#
minikube start --vm-driver="virtualbox"  --kubernetes-version="1.5.2" --memory 2048

#
# Set context minikube
#
kubectl config use-context minikube
