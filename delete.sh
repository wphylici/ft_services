#!/bin/bash

kubectl delete deploy nginx-deployment
kubectl delete svc nginx-svc
kubectl delete deploy influxdb-deployment
kubectl delete svc influxdb-svc
kubectl delete deploy grafana-deployment
kubectl delete svc grafana-svc
kubectl delete deploy mysql-deployment
kubectl delete svc mysql-svc
kubectl delete deploy phpmyadmin-deployment
kubectl delete svc phpmyadmin-svc
kubectl delete deploy wordpress-deployment
kubectl delete svc wordpress-svc
kubectl delete deploy ftps-deployment
kubectl delete svc ftps-svc
minikube stop
minikube delete
