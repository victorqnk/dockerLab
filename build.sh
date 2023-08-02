#!/bin/bash

docker build -t website -f Dockerfile .
docker run -d --name mysql -e MYSQL_ROOT_PASSWORD=123456 -e MYSQL_DATABASE=data mysql:latest
docker run -d --name website -p 8080:8080 --link mysql:mysql website_image
