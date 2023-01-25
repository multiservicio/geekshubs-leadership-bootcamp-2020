# Configuración básica del cluster de Kubernetes

Para esta parte del bootcamp vamos a trabajar sobre Kubernetes y para ello vamos a desplegar una serie de aplicaciones/servicios:

CI
- Jenkins, para orquestar nuestro _pipeline_
- GOGS, para la gestión de código mediante el _version control_ `git`
- Docker Registry, para el almacenamiento local de imagenes de `docker`

Observability
- Grafana, para visualizar todo
- Loki + PromTail, para agregar los logs de los contenedores
- Prometheus, para telemetría

## Configuración

```bash
kubectl apply -f *.yml
```
