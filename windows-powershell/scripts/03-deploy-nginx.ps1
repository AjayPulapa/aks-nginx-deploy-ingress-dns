kubectl apply -f ../k8s/namespace.yaml
kubectl apply -f ../k8s/nginx-deployment.yaml
kubectl apply -f ../k8s/nginx-service.yaml
kubectl apply -f ../k8s/nginx-ingress.yaml

kubectl get ingress -n nginx-dev
