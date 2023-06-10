kubectl expose deployment -n namespace-nginx-lab deployment-nginx-lab --type=LoadBalancer --port=80
minikube service deployment-nginx-lab -n namespace-nginx-lab

