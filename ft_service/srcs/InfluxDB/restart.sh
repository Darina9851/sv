#!/bin/sh

eval $(minikube docker-env)

kubectl delete svc influxdb-service
kubectl delete deployment influxdb-deployment

docker build -t influxdb-image .

kubectl apply -f influxdb.yaml