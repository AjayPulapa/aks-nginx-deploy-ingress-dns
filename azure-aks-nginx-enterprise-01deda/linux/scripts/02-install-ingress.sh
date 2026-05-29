#!/bin/bash

RESOURCE_GROUP="rg-nginx-dev"
AKS_CLUSTER="aks-nginx-dev"

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml

kubectl wait \
  --namespace ingress-nginx \
  --for=condition=ready pod \
  --selector=app.kubernetes.io/component=controller \
  --timeout=300s

NODE_RG=$(az aks show \
  --resource-group $RESOURCE_GROUP \
  --name $AKS_CLUSTER \
  --query nodeResourceGroup \
  -o tsv)

PUBLIC_IP_NAME=$(az network public-ip list \
  --resource-group $NODE_RG \
  --query "[0].name" \
  -o tsv)

az network public-ip update \
  --resource-group $NODE_RG \
  --name $PUBLIC_IP_NAME \
  --dns-name nginxdemo

kubectl get svc -n ingress-nginx
