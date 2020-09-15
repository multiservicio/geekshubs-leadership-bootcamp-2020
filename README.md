# Geekshubs Leadership & Tech Management Bootcamp, 2020

# Módulo 4 - DevOps

```
Profesor: Pedro Díaz
Viernes 18, Septiembre 2020
Sábado 19, Septiembre 2020
Total: 10h (5h + 5h)
```

> En este bloque se centrará en conocer las funciones de un DevOps y sus herramientas
de trabajo. Definir y crear la estrategia de arquitectura de sistemas de la empresa.
Aprender a implementar continuous delivery y orquestación de servicios.
En la demo con un caso real se verán las herramientas de aprovisionamiento y cómo
automatizar esas tareas junto con el despliegue del desarrollo viendo Puppet, Chef,
Terraform, Ansible y Packer. Por otro lado, ese despliegue se hará usando Docker con
Kubernetes como gestor de clústeres para hacer los pipelines de CI/CD (Continuous
Integration / Continuous Delivery).

## Agenda

- Día 1:
    - ¿Qué es DevOps?
        - Breve historia sobre el término y la cultura detrás.
        - Pilares sobre los que se basa.
        - Metodologías típicas que se usan en entornos devops.
        - DevOps en la organización.
        - Ciclo de vida de una aplicación en un entorno devops.
    - Presentaremos Acme Inc. una empresa la cual va a ir implementando de un equipo _tradicional_ a uno _devops_.

- Día 2:
    - Seguiremos el camino de Acme Inc. hacia el éxito implementando devops en la organización.
        - Herramientas más usadas actualmente para cada parte del _pipeline_ clásico devops.
    - Además hablaremos sobre la parte cultural de un equipo DevOps. Lo haremos mediante una charla y un posterior debate.
    - Para finalizar haremos una _live session_ donde implementaremo una _pipeline_ completa de desarrollo y despliegue.

## Requerimientos

Principalmente vamos a usar `docker` para toda la parte de los ejemplos y el live coding. También tocaremos, brevemente, algo de `Kubernetes`. Si tu sistema operativo es _Linux_ o _macOS_ no tendrás grandes problemas ya que funciona *algo* mejor que en _Windows_.

Para instalar `docker` hay dos formas, una sería instalarlo en tu sistema operativo base o bien crear una máquina virtual e instalarlo dentro.

Para la primera opción podemos seguir las guías oficiales:

- Windows: https://docs.docker.com/docker-for-windows/
- macOS: https://docs.docker.com/docker-for-mac/install/
- Linux (ubuntu): https://docs.docker.com/engine/install/ubuntu/

Si queremos tener todo en una máquina virtual, entonces hay un par de alternativas, o bien instalamos una máquina virtual a mano en tu hypervisor preferido o usamos `vagrant` para hacer esto más sencillo.

> Si usas un entorno basado en Microsoft Windows, lo más cómodo será que tengas una máquina virtual Ubuntu ya lista y preparada. Nota, en Windows 10 por defecto el Hypervisor propio de microsoft da problemas si quieres usar VirtualBox. Puedes elegir o bien levantar la VM con el hypervisor nativo de Windows 10 o bien desactivar este e instalar VirtualBox.

En ambos casos usaremos Ubuntu 18.04 LTS como _OS_ base.

### Vagrant

Vagrant es un software que nos permite definir en un fichero `yaml` nuestra máquina virtual y además, nos da un extra de flexibilidad para operarla y provisionarla. Vagrant no deja de ser una interfaz entre nosotros y el hipervisor que controla la vm, por tanto seguimos dependiendo de un hipervisor para la máquina virtual. Lo recomendable (y gratuito) es instalar VirtualBox.

Para instalar VirtualBox -> https://www.virtualbox.org/wiki/Downloads
Para instalarl Vagrant -> https://www.vagrantup.com/downloads

Para descargarnos de antemano (recomendable antes del inicio de la clase) la imágen de Ubuntu haremos: `vagrant box add ubuntu/bionic64` desde la terminal.

### Virtualbox (únicamente)

Para instalar VirtualBox -> https://www.virtualbox.org/wiki/Downloads

## Código de ejemplo

Durante el bloque iremos viendo ejemplos en código, para ello es muy recomendable tener a mano un buen editor de código con el que nos sintamos cómodos. Personalmente recomiendo `vscode` de Microsoft. Es multiplataforma y tiene infinidad de plugins y configuraciones.

- vscode: https://code.visualstudio.com/

Hay ciertos plugins para vscode que nos pueden ayudar pero no son para nada obligatorios:

- Docker plugin: https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker
- YAML suppor: https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml
- Gremlins tracker, plugin para ver código y carácteres que nos pueden dar problemas: https://marketplace.visualstudio.com/items?itemName=nhoizey.gremlins

# Material de clase

Todo el material del curso lo encontrareis en este repositorio y en las transparencias compartidas. Las transparencias que están en este repositorio estan hechas con [Markdown](https://www.markdownguide.org/). Y usando el motor de renderizado de [Marp](https://marp.app/). Existe también plugin para vscode por lo que si quereis podeis ver las transparencias en la misma ventana que el código y la terminal.

Si teneis curiosidad por la sintaxis de Marp, la tenéis [aquí](https://marpit.marp.app/directives).

Si decidís usar vscode con el plugin de `marp` podeis llegar a ver todo el material en una sola ventana.


![Ejemplo de vscode donde ver el código, la terminal y las transparencias.](./img/entorno-trabajo.png)


----
Geekhubs - Tech Managemente & Leadership Bootcamp 2020 - Pedro Díaz
