# Contenerized SQL training project

## Running SQL Server

Use connection script `run_sql_server_image.sh` to create SQL Server Developer container

## Accessing SQL Server docker container with SSMS

To establish connection between SQL Server Management Studio and SQL docker container containers name is used, probably due to internal docker DNS. Therefore it is recommended to give provide a name for container to maintain connectivity with SSMS.

## References

[Microsoft SQL Server Dockerhub page](https://hub.docker.com/_/microsoft-mssql-server?tab=description)  

[Issue resolving SSMS to SQL Server container connectivity](https://stackoverflow.com/questions/61859247/cannot-connect-with-ssms-to-sql-server-on-docker)
