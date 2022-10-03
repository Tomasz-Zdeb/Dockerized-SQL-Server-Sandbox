#!/bin/bash

docker run --name dev-sql-server -e "ACCEPT_EULA=Y" \
-e "SA_PASSWORD=Devpass123." \
-p 1433:1433 \
-d \
mcr.microsoft.com/mssql/server:2022-latest