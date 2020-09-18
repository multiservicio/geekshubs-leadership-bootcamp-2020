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

# Monitoring

---
![bg opacity:.2](https://i.imgur.com/GgGuUyl.gif)
# Monitoring

---
# Monitoring

### Telemetría

![w:650 center](https://docs.vmware.com/en/VMware-Tanzu-Toolkit-for-Kubernetes/images/GUID-A3897B1B-822E-410C-96C7-93FBD7AF61A5-low.png)

---
# Monitoring

### Grafana

![w:320 center](https://grafana.com/static/img/logos/grafana_logo_swirl-events.svg)

---
# Monitoring

### FEK stack (FluentD, Elasticsearch, Kibana)

![w:600 center](https://allvectorlogo.com/img/2019/06/elastic-elasticsearch-logo-vector.png)

---
# Instalación

`sudo snap install microk8s --classic`

Add-ons disponibles -> https://microk8s.io/docs/addons

1) `microk8s enable prometheus` -> Prometheus + Grafana
2) `microk8s enable fluentd` -> FEK stack

---
# Monitoring

`microk8s enable prometheus` -> Prometheus + Grafana

Demo

---
# Monitoring

`microk8s enable fluentd` -> FEK stack

Demo

---
# Monitoring

Nota: Como estamos usando microk8s vamos a hacer 2 pequeños cambios para poder acceder tanto a Kibana como a Grafana.

```bash
# Para listar los servicios disponibles
kubectl get svc -A
# Editar el servicio que expone Grafana
kubectl -n monitoring edit svc grafana
# Editar el servicio que expone Kibana
kubectl -n kube-system edit svc kibana-logging
```
---
# Monitoring

Y cambiamos, donde ponía:

```yaml
type: ClusterIp
```
Ponemos:
```yaml
type: NodePort
```

---
# Monitoring

Ahora podemos acceder a los servicios en la IP de la máquina virtual y el puerto que nos diga Kubernetes

Si usamos Vagrant, será:

`http://10.10.10.10` y el puerto que vemos del rango 3xxxx

```bash
kubectl get svc -A
vagrant@ubuntu-bionic:~$ kubectl get svc -A
NAMESPACE            NAME                    TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)                        AGE
...
monitoring           grafana                 NodePort    10.152.183.229   <none>        3000:30238/TCP                 30m
kube-system          kibana-logging          NodePort    10.152.183.31    <none>        5601:30897/TCP                 30m
