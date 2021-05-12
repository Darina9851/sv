#!/bin/sh

eval $(minikube docker-env)

kubectl delete svc wordpress-service
kubectl delete deployment wordpress-deployment
docker rmi wordpress-image

docker build -t wordpress-image .

kubectl apply -f wordpress.yaml