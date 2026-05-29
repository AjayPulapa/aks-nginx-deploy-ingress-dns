# PowerShell Deployment

## Open PowerShell

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

## Login

az login

## Run

cd .\scripts

.\01-setup-aks.ps1
.\02-install-ingress.ps1
.\03-deploy-nginx.ps1
