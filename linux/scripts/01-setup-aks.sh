#!/bin/bash

RESOURCE_GROUP="rg-nginx-dev"
LOCATION="centralindia"
AKS_CLUSTER="aks-nginx-dev"

echo "======================================="
echo "Creating Resource Group"
echo "======================================="

az group create \
  --name $RESOURCE_GROUP \
  --location $LOCATION

echo "======================================="
echo "Creating AKS Cluster"
echo "======================================="

az aks create \
  --resource-group $RESOURCE_GROUP \
  --name $AKS_CLUSTER \
  --node-count 1 \
  --generate-ssh-keys

echo "======================================="
echo "Connecting kubectl"
echo "======================================="

az aks get-credentials \
  --resource-group $RESOURCE_GROUP \
  --name $AKS_CLUSTER

echo "======================================="
echo "Kubernetes Nodes"
echo "======================================="

kubectl get nodes
