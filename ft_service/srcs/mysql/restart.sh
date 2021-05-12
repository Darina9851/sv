#!/bin/sh

eval $(minikube docker-env)

kubectl delete svc mysql-service
kubectl delete deployment mysql-deployment

docker build -t mysql-image .

kubectl apply -f mysql.yaml