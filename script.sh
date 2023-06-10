#!/bin/bash


read -p "Enter docker hub username: " dcruser

docker login -u $dcruser
docker build -t $dcruser/nginx-lab ./dockerfiles/.
docker push $dcruser/nginx-lab


kubectl apply -f ./k8s-manifests/namespace.yaml
kubectl apply -f ./k8s-manifests/configmap.yaml
kubectl apply -f ./k8s-manifests/service.yaml
kubectl apply -f ./k8s-manifests/deployment.yaml
kubectl get deployment -n namespace-nginx-lab
