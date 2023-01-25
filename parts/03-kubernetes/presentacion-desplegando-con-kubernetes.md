---
theme: gaia
_class: lead
paginate: false
backgroundColor: #e7252f
backgroundImage: url('./../../img/background-white.png')
color: #e7252f
marp: true
---
<!-- _backgroundImage: url('./../../img/background-red.png') -->
<!-- _color: white -->

# Desplegando Contenedores Kubernetes

---
![bg opacity:.2](https://media.giphy.com/media/Aff4ryYiacUO4/giphy.gif)
# Kubernetes

---
# Kubernetes

Reemplazo progresivo de la versión. Estrategia `Rolling Update`

Tengo 3 réplicas. Cambio una de las _antiguas_ por una de la nueva.
Luego otra y así hasta tener todas reemplazadas.

```
AAA
BAA
BBA
BBB
```

---
# Kubernetes

### Requisitos de nuestra app

- Nuestra aplicación está preparada para trabajar con múltiples réplicas.
- Los cambios introducidos no _rompen_ y ambas versiones pueden convivir.

---
# Kubernetes

- Sin _downtime_
- Cambio incremental, menos riesgo.
- Poder parar el cambio sin afectar al 100% de los usuarios.

---
# Kubernetes

Habilitamos Kubernetes en docker desktop

---
![bg auto opacity:.2](https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Kubernetes_logo_without_workmark.svg/1200px-Kubernetes_logo_without_workmark.svg.png)
# Kubernetes


---
# Rollig Update

Vamos a crear las imágenes de Docker necesarias primero:

- `docker build -t localhost:330335/lb:v1 -f Dockerfile-lb .`
- `docker build -t localhost:330335/myapp:v1 -f Dockerfile-myapp .`
- Modificamos `index.html` y:
- `docker build -t localhost:30335/myapp:v2 -f Dockerfile-myapp .`

Y comprobamos con:

`docker images`

---
# Docker push

```bash
docker push localhost:330335/lb:v1
docker push localhost:330335/myapp:v1
docker push localhost:30335/myapp:v2
```

---
# Kubernetes

Es hora de desplegar nuestra aplicación. Primero la `v1`.

`kubectl -n default apply -f myapp.yml`

Y luego exponerla mediante el balanceador:

`kubectl apply -f lb.yml`

---
# Kubernetes

`kubectl get services`
`kubectl get pod`
`kubectl get deployment`

---
# Kubernetes

Ahora vamos a deplegar nuestra versión `v2`.

- `kubectl edit deploy myapp`

y sustituimos `v1` por `v2` en el `tag` de la imagen del contenedor.

---
![bg opacity:.2](https://imagenes.20minutos.es/files/image_656_370/uploads/imagenes/2019/05/21/957237.jpg)
# Kubernetes

---
# Kubernetes

Ejercicio:

- Construir v3 y desplegarla.
