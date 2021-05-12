# !/bin/sh

minikube delete
minikube start --vm-driver=virtualbox

eval $(minikube docker-env)

minikube addons enable dashboard
minikube dashboard &

# docker pull metallb/speaker:v0.8.2
# docker pull metallb/controller:v0.8.2

minikube addons enable metallb

#clear all pod
kubectl delete svc nginx-service
kubectl delete deployment nginx-deployment

kubectl delete deployment mysql-deployment
kubectl delete svc mysql-service

kubectl delete deployment wordpress-deployment
kubectl delete svc wordpress-service

kubectl delete deployment phpmyadmin-deployment
kubectl delete svc phpmyadmin-service

kubectl delete deployment grafana-deployment
kubectl delete svc grafana-service

kubectl delete deployment ftps-deployment
kubectl delete svc ftps-service

kubectl delete deployment influxdb-deployment
kubectl delete svc influxdb-service

#start nginx
docker build -t nginx-image srcs/nginx
kubectl apply -f srcs/nginx/nginx.yaml

#start mysql
docker build -t mysql-image srcs/mysql
kubectl apply -f srcs/mysql/mysql.yaml

#start wordpress
docker build -t wordpress-image srcs/Wordpress
kubectl apply -f srcs/Wordpress/wordpress.yaml

#start phpMyadmin
docker build -t phpmyadmin-image srcs/phpMyAdmin
kubectl apply -f srcs/phpMyAdmin/phpmyadmin.yaml

#start FTPS
docker build -t ftps-image srcs/FTPS
kubectl apply -f srcs/FTPS/ftps.yaml

#start InfluxDB
docker build -t influxdb-image srcs/InfluxDB
kubectl apply -f srcs/InfluxDB/influxdb.yaml

#start Grafana
docker build -t grafana-image srcs/Grafana
kubectl apply -f srcs/Grafana/grafana.yaml

kubectl apply -f srcs/metallb.yaml