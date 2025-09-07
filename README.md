# 🐳 Docker 연습용 프로젝트

Node.js 서버를 Docker 컨테이너에서 실행해보는 간단한 예제입니다.

---

## 🚀 Docker 이미지 빌드
아래 명령어를 실행하거나 `build.bat` 파일을 실행하세요.

```bat
docker build -t mynode:v2 .
docker build -t mynginx:v2 ./nginx
```

## 🌐 Docker 네트워크 생성
아래 명령어를 입력해주세요.

```bat
docker network create --mynet
```

## ▶️ 컨테이너 실행
1. 명령어 실행
```bat
docker run -d --network mynet --name mynode-container mynode:v2
docker run -d -p 80:80 --network mynet --name mynginx-container myngnix:v2
```
또는 `start_docker.bat` 파일을 실행하세요.

2. 브라우저에서 접속:
```
http://localhost:80
```