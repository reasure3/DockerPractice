@echo off
echo ===== Start build db to docker =====
docker build -t mypostgres:v2 ./db
echo Finish build db to docker