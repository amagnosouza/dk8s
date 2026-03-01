#!/bin/bash
kubectl create ns treinamento-ch2
kubectl apply -f pod-faminto.yaml
sleep 10
kubectl -n treinamento-ch2 get pods
kubectl -n treinamento-ch2 describe pod pod-faminto

kubectl delete -f pod-faminto.yaml
kubectl apply -f fix-pod.yaml
sleep 10
kubectl -n treinamento-ch2 get pods
kubectl -n treinamento-ch2 describe pod pod-comportado