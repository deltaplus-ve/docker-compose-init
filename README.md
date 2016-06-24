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

Es importante para que el servicio `traefik` funcione correctamente, la direccion IP del host de docker (`docker-machine ip`) sea agregada como un servidor DNS adicional en el equipo donde se vaya a trabajar, para que el dominio deltaplus.local pueda ser resuelto correctamente por el browser y demas herramientas.
