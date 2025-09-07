docker run -d --network mynet --name mynode-container mynode:v2
docker run -d -p 80:80 --network mynet --name mynginx-container myngnix:v2