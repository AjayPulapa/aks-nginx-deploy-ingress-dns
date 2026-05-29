$RESOURCE_GROUP="rg-nginx-dev"
$LOCATION="centralindia"
$AKS_CLUSTER="aks-nginx-dev"

az group create `
  --name $RESOURCE_GROUP `
  --location $LOCATION

az aks create `
  --resource-group $RESOURCE_GROUP `
  --name $AKS_CLUSTER `
  --node-count 1 `
  --enable-addons monitoring `
  --generate-ssh-keys

az aks get-credentials `
  --resource-group $RESOURCE_GROUP `
  --name $AKS_CLUSTER

kubectl get nodes
