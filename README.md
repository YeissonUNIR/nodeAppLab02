# Laboratorio 02:Proyecto Node.js con MongoDB y Docker

Este proyecto contiene una aplicación de Node.js que se conecta a una base de datos de MongoDB, y está configurado para ejecutarse en Docker.

## Estructura del proyecto

El proyecto se organiza de la siguiente manera:

- La carpeta `nodeAppLab02/` contiene la aplicación Node.js, la cual se conecta a una base de datos de MongoDB.
- El archivo `nodeAppLab02/Dockerfile` es el archivo de configuración de Docker para la aplicación.
- El archivo `docker-compose.yml` es el archivo de configuración de Docker Compose que se utiliza para orquestar los contenedores de la aplicación y la base de datos.

## Uso

Sigue estos pasos para ejecutar la aplicación utilizando Docker:

1. Asegúrate de tener Docker y Docker Compose instalados en tu máquina.

2. En la raíz del proyecto, ejecuta el siguiente comando para construir la imagen de la aplicación:

## Ejecución para Infraestructura en terraform

Para ejecutar todo lo que está en la carpeta infrastructure, puedes seguir los siguientes pasos:

1. Asegúrate de tener Terraform instalado en tu sistema. Puedes verificarlo ejecutando el comando terraform version en tu línea de comandos. Si no lo tienes instalado, puedes seguir las instrucciones en la documentación oficial de Terraform (https://learn.hashicorp.com/tutorials/terraform/install-cli).

2 . Abre una terminal y navega hasta el directorio raíz del proyecto, donde se encuentra la carpeta infrastructure.

3 . Antes de iniciar la ejecución de Terraform, asegúrate de configurar las credenciales de AWS en tu entorno. Puedes hacerlo configurando las variables de entorno AWS_ACCESS_KEY_ID y AWS_SECRET_ACCESS_KEY con tus credenciales de AWS.

4 . Ejecuta el siguiente comando en tu terminal para inicializar el directorio de trabajo de Terraform:

```
terraform init
```

Esto descargará los proveedores necesarios y configurará el backend de Terraform si está especificado en los archivos de configuración.

5 . Después de inicializar el proyecto, ejecuta el siguiente comando para obtener un plan de ejecución:
```
terraform plan
```
Esto te mostrará una descripción de los recursos que se crearán, modificarán o eliminarán según la configuración definida en los archivos de Terraform.

6 . Revisa el plan de ejecución y, si estás satisfecho con los cambios propuestos, puedes ejecutar el siguiente comando para aplicar los cambios:
```
terraform apply
```
Terraform te pedirá confirmación antes de aplicar los cambios. Puedes confirmar escribiendo "yes".

7 . Terraform comenzará a crear los recursos definidos en los archivos de configuración. Puedes seguir el progreso en la salida de la terminal.

Una vez que Terraform haya terminado de ejecutar el plan, los recursos se habrán creado en tu cuenta de AWS según la configuración especificada en los archivos de Terraform.