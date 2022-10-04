# Contenerized SQL Server sandbox

## Running SQL Server

* **Using unmodified MS SQL Server image**  
Execute connection script `run_sql_server_image.sh` to create SQL Server Developer container. This will result in a container with a fresh instance of SQL Server. That approach does not give a lot of customizability.  

* **Using custom image on top of MS SQL Server's image**  
Docker images are beeing created using Dockerfile containig build instructions. In order tu build an image

      docker build [args]

  command is used, but Feel free to use `build_custom_sql_server_image.sh` script to perform the image build with predefined arguments. Then `run_custom_sql_server_image.sh` script can be use to run the built image.

## Additional useful docker commands

    docker images 

command displays all images stored on you local Docker image repository.

    docker image rm tag/name

command deletes specified image from local Docker image repository

## Accessing SQL Server docker container with SSMS

To establish connection between SQL Server Management Studio and SQL docker container containers name is used, probably due to internal docker DNS. Therefore it is recommended to give provide a name for container to maintain connectivity with SSMS.

> ip_address\container_name,port

## References

[Microsoft SQL Server Dockerhub page](https://hub.docker.com/_/microsoft-mssql-server?tab=description)  

[Stack Overflow issue resolving SSMS to SQL Server container connectivity](https://stackoverflow.com/questions/61859247/cannot-connect-with-ssms-to-sql-server-on-docker)

[Microsoft Docs: Configure and Customize SQL Server Docker containers](https://learn.microsoft.com/en-us/sql/linux/sql-server-linux-docker-container-configure?view=sql-server-ver16&pivots=cs1-bash)

[T. Corey's SQL Server with Docker guide](https://youtu.be/Yj69cWEG_Yo)

[Stack Overflow issue on SA_PASSWORD environmental variable](https://stackoverflow.com/questions/52052494/login-fails-for-sa-sql-server-linux-docker)
