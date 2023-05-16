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
kubectl apply -n continuous-integration -f ./CI/gogs.yml

echo "Desplegando infraestructura de observabilidad..."
kubectl apply -n observability -f ./Observability/loki.yml
kubectl apply -n observability -f ./Observability/prometheus.yml
kubectl apply -n observability -f ./Observability/grafana.yml

sleep 30

kubectl -n observability get po,svc
echo ""
kubectl -n continuous-integration get po,svc
echo "fin"
