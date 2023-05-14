# Laboratorio 02:Proyecto Node.js con MongoDB y Docker

Este proyecto contiene una aplicación de Node.js que se conecta a una base de datos de MongoDB, y está configurado para ejecutarse en Docker.

## Estructura del proyecto

El proyecto se organiza de la siguiente manera:

├── app/ # Carpeta de la aplicación Node.js
│ ├── ... # Archivos y carpetas de la aplicación
│ └── Dockerfile # Archivo de configuración de Docker para la aplicación
├── docker-compose.yml # Archivo de configuración de Docker Compose
└── README.md # Este archivo

- La carpeta `nodeAppLab02/` contiene la aplicación Node.js, la cual se conecta a una base de datos de MongoDB.
- El archivo `nodeAppLab02/Dockerfile` es el archivo de configuración de Docker para la aplicación.
- El archivo `docker-compose.yml` es el archivo de configuración de Docker Compose que se utiliza para orquestar los contenedores de la aplicación y la base de datos.

## Uso

Sigue estos pasos para ejecutar la aplicación utilizando Docker:

1. Asegúrate de tener Docker y Docker Compose instalados en tu máquina.

2. En la raíz del proyecto, ejecuta el siguiente comando para construir la imagen de la aplicación:

