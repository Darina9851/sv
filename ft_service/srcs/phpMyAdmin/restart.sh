#!/bin/sh

eval $(minikube docker-env)

kubectl delete svc phpmyadmin-service
kubectl delete deployment phpmyadmin-deployment

docker build -t phpmyadmin-image .

kubectl apply -f phpmyadmin.yaml