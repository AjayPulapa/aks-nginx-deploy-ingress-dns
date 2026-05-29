$RESOURCE_GROUP="rg-nginx-dev"

az aks delete `
  --resource-group $RESOURCE_GROUP `
  --name aks-nginx-dev `
  --yes

az group delete `
  --name $RESOURCE_GROUP `
  --yes
