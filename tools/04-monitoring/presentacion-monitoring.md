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
