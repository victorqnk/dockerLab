#!/bin/bash

docker start mysql
docker-compose -f compose.yaml up -d
