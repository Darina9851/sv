#!/bin/sh

eval $(minikube docker-env)

kubectl delete svc ftps-service
kubectl delete deployment ftps-deployment

docker build -t ftps-image .

kubectl apply -f ftps.yaml