#!/bin/bash

app=${PWD##*/}
cd /home/docker/$app
docker compose down $app
docker compose pull $app
docker compose up -d

echo "$app update complele!"
