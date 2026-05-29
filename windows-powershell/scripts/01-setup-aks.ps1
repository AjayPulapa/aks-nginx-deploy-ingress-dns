$RESOURCE_GROUP="rg-nginx-dev"
$LOCATION="centralindia"
$AKS_CLUSTER="aks-nginx-dev"

Write-Host "======================================="
Write-Host "Creating Resource Group"
Write-Host "======================================="

az group create `
  --name $RESOURCE_GROUP `
  --location $LOCATION

Write-Host "======================================="
Write-Host "Creating AKS Cluster"
Write-Host "======================================="

az aks create `
  --resource-group $RESOURCE_GROUP `
  --name $AKS_CLUSTER `
  --node-count 1 `
  --generate-ssh-keys

Write-Host "======================================="
Write-Host "Connecting kubectl"
Write-Host "======================================="

az aks get-credentials `
  --resource-group $RESOURCE_GROUP `
  --name $AKS_CLUSTER

kubectl get nodes
