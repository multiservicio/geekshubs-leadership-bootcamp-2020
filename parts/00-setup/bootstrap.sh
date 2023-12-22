#!/bin/bash

set -e

echo "Inicializando los componentes básicos para el bloque..."

echo "Check Kubernetes está conectado..."
kubectl get nodes

echo "Creando namespaces necesarios para el curso. Definidos en el fichero namespaces.yml..."
kubectl apply -f ./namespaces.yml

echo "Creando el container registry..."
kubectl apply -f ./CI/registry.yml

echo "Levantando Gogs..."
kubectl apply -n default -f ./CI/gogs.yml

sleep 5

echo "Levantando Jenkins..."
kubectl apply -f ./CI/jenkins.yml

sleep 5

echo "Desplegando infraestructura de observabilidad..."
kubectl apply -n observability -f ./Observability/loki.yml

sleep 5

kubectl apply -n observability -f ./Observability/prometheus.yml

sleep 5

kubectl apply -n observability -f ./Observability/grafana.yml

sleep 30

kubectl -n observability get po,svc
echo ""
kubectl -n continuous-integration get po,svc
kubectl -n default get po,svc
echo "fin"
