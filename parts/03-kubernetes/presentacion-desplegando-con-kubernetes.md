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
- `docker build -t localhost:30335/acme-inc-welcome-page:1 .`
- Modificamos `index.html` y:
- `docker build -t localhost:30335/acme-inc-welcome-page:2 .`

Y comprobamos con:

`docker images`

---
# Docker push

```bash
docker push localhost:30335/acme-inc-welcome-page:1
docker push localhost:30335/acme-inc-welcome-page:2
```
y la app
```
docker push localhost:30335/acme-inc-app:1
```

---
# Kubernetes

Es hora de desplegar nuestra aplicación. Primero la `v1`.

`kubectl apply -f welcome-page.yml`

Y luego la app:

`kubectl apply -f application.yml`

---
# Kubernetes

`kubectl get services`
`kubectl get pod`
`kubectl get deployment`

o todo junto mediante:
```
kubectl get po,svc,deployment -n default
```

---
# Kubernetes

Ahora vamos a deplegar nuestra versión `v2`.

- `kubectl edit deploy acme-welcome-page`

y sustituimos `1` por `2` en el `tag` de la imagen del contenedor.

---
![bg opacity:.2](https://imagenes.20minutos.es/files/image_656_370/uploads/imagenes/2019/05/21/957237.jpg)
# Kubernetes

---
# Kubernetes

Ejercicio:

- Construir 3 y desplegarla.
