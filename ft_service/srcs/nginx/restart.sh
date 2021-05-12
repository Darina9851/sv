#!/bin/sh

eval $(minikube docker-env)

kubectl delete svc nginx-service
kubectl delete deployment nginx-deployment

docker build -t nginx-image .

kubectl apply -f nginx.yaml