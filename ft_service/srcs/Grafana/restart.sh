#!/bin/sh

eval $(minikube docker-env)

kubectl delete svc grafana-service
kubectl delete deployment grafana-deployment

docker build -t grafana-image .

kubectl apply -f grafana.yaml