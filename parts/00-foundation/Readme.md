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

Antes de nada vamos a crear los `namespaces` que usaremos durante el bloque:

```bash
kubectl apply -f namespaces.yml
```

### Observability

Empezamos primero por las herramientas de observabilidad:

```bash
cd Observability
kubectl -n observability apply -f .
```

Con este comando le decimos a Kubernetes que aplique todos los `manifests` que están en esta carpeta dentro del namespace `observability`

Podemos ver como se despliegan las aplicaciones con el comando:

```bash
kubectl -n observability get po,svc
```

Una vez finalizado puedes acceder a Grafana en la url [http://localhost:30331](http://localhost:30331)

### CI, integración continua
