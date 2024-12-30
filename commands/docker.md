# Docker

## Imagen de SQL Server

1. Instalar el software necesario:

- VMware Fusion con una máquina virtual que corra Windows.
- Docker en el host (MacOs).
- SQL Management Studio o Azure Data Studio en la VM (Windows).

1. Ejecutar el siguiente script en la terminal.

```
docker pull mcr.microsoft.com/azure-sql-edge
```

3. Reemplazar "Password1234" por una nueva contraseña y ejecutar el siguiente script en la terminal para obtener la imagen de SQL Server.

```
docker run -e "ACCEPT_EULA=1" -e "MSSQL_SA_PASSWORD=Password1234" -e "MSSQL_PID=Developer" -e "MSSQL_USER=SA" -p 1433:1433 -d --name=sql mcr.microsoft.com/azure-sql-edge
```

4. Crear una nueva conexión en Management Studio o Azure Data Studio:

- Server type: Database Engine
- Server Name: dirección IP del host (ver en configuración WIFI)
- Authentication type: SQL Server Authentication/SQL Login
- Username: SA
- Password: Password1234 (o la que se haya reemplazado)

5. Usar la siguiente cadena de conexión en caso de querer conectarse a una base de datos con SQL Server desde un software externo. Reemplazar las VARIABLES_MAYUSCULAS por los valores reales.

```
"Data Source=DIRECCION_IP,PUERTO; Initial Catalog=NOMBRE_DE_DB; User ID=SA; Password=Password1234; Connect Timeout=30;"
```