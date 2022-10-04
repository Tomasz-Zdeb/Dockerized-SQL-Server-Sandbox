# Build's step goal is to perform a SQL script to initialize the database
# to a desired state
FROM mcr.microsoft.com/mssql/server:2022-latest AS build

ENV ACCEPT_EULA=Y
#For some reason env variable cannot be SA_PASSWORD like when you build from command line
ENV MSSQL_SA_PASSWORD=Devpass1.

# Sets working directory to /tmp - if it does not exists it creates is
WORKDIR /tmp

# Copies the script to current working directory
COPY create_demo_database.sql .

# Starts SQL Server
# Performs sleep to make sure SQL Server is up and running
# Executes SQL script on SQL Server
# Shuts SQL server down 
RUN /opt/mssql/bin/sqlservr --accept-eula & \
sleep 20s \
&& /opt/mssql-tools/bin/sqlcmd -S 127.0.0.1,1433 -U SA -P "Devpass1." -i /tmp/create_demo_database.sql \
&& pkill sqlservr

# Release's step goal is to copy only the data to clean SQL Server image
# so no copied source files like sql scripst are then stored in final image 
FROM mcr.microsoft.com/mssql/server:2022-latest AS release

ENV ACCEPT_EULA=Y

# Copies the SQL Server data from build step to release step
COPY --from=build /var/opt/mssql/data/ /var/opt/mssql/data/