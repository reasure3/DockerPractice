@echo off
echo ===== Start build nginx to docker =====
docker build -t mynginx:v2 ./nginx
echo Finish build nginx to docker