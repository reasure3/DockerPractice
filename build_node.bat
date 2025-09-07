@echo off
echo ===== Start build server to docker =====
docker build -t mynode:v2 .
echo Finish build server to docker