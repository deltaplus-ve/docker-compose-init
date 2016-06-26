# docker-compose-init

Inicializa el ambiente de desarrollo para delta-engine.

## Dependencias

Asegurate de tener instalado el Docker Engine en tu equipo.

## Inicializar el proyecto en Linux

Ejecuta esto en el Terminal:

    curl -o- https://raw.githubusercontent.com/deltaplus-ve/docker-compose-init/master/init-linux.sh | bash

## Inicializar el proyecto en Mac o Windows

Ejecuta esto en el Docker Quickstart Terminal:

    curl -o- https://raw.githubusercontent.com/deltaplus-ve/docker-compose-init/master/init.sh | bash

## Configurar DNS local

Es importante para que el servicio `traefik` funcione correctamente, la direccion IP del host de docker (`docker-machine ip` en Windows o Mac y `ifconfig docker0` en Linux) sea agregada como un servidor DNS adicional en el equipo donde se vaya a trabajar, para que el dominio deltaplus.local pueda ser resuelto correctamente por el browser y demas herramientas.

## Configuración adicional para Ubuntu / Mint

1. Correr `sudo apt-get update && sudo apt-get install dnsmasq`
2. Editar el archivo `/etc/dnsmasq.conf` como sudo.
3. Agregar/modificar los siguientes valores: 
```code
#Servidores DNS
server=/deltaplus.local/172.17.0.1
server=8.8.8.8
server=8.8.4.4
#Interfaces en las que debe funcionar dnsmasq
#interface=wlan0
#interface=eth0
#interface=wlp3s0
#Descomentar la(s) adecuada(s) segun sea el caso
```
4. Editar el archivo `/etc/avahi/avahi-daemon.conf`
5. Agregar/modificar los siguientes valores:
```code
domain-name=.alocal
use-ipv4=no
use-ipv6=yes
```
6. Correr `sudo service avahi-daemon restart`
7. Correr `sudo service dnsmasq restart`
8. Correr `sudo service network-manager restart`
9. Probar y si no funciona reiniciar el equipo. O contactar a Beto.
