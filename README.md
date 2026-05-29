# Azure AKS NGINX Enterprise Deployment

This project contains:
- Linux scripts
- Windows PowerShell scripts
- Kubernetes manifests
- AKS setup
- NGINX ingress
- Azure DNS mapping

az network public-ip update \
  --resource-group MC_rg-nginx-dev_aks-nginx-dev_centralindia \
  --name kubernetes-ad9e61e5035a64564981bbfaa0b349b1 \
  --dns-name ajaypulapa-nginx

  az network public-ip show \
  --resource-group MC_rg-nginx-dev_aks-nginx-dev_centralindia \
  --name kubernetes-ad9e61e5035a64564981bbfaa0b349b1 \
  --query dnsSettings.fqdn

  ajaypulapa-nginx.centralindia.cloudapp.azure.com

  kubectl apply -f nginx-ingress.yaml

  kubectl get ingress -n nginx-dev

  HOSTS
ajaypulapa-nginx.centralindia.cloudapp.azure.com

http://ajaypulapa-nginx.centralindia.cloudapp.azure.com



------------------------------------------------------
kubectl get endpoints -n nginx-dev

kubectl describe svc nginx-web-service -n nginx-dev

kubectl get pods -n nginx-dev --show-labels

kubectl describe ingress nginx-ingress -n nginx-dev
