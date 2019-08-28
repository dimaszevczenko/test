#!/bin/bash

cd ci_env
docker-compose build
docker-compose up --detach

firefox http://localhost:8080 &
firefox http://localhost:8081
