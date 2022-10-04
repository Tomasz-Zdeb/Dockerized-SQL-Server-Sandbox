#!/bin/bash

docker run --name dev-sql-server \
-p 1433:1433 \
-d \
initialized-sql-server:latest