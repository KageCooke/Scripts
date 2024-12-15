#!/bin/bash

#update sonarr
cd /home/docker/sonarr
docker compose down sonarr
docker compose pull sonarr
docker compose up -d

#update radarr
cd /home/docker/radarr
docker compose down radarr
docker compose pull radarr
docker compose up -d

#update prowlarr
cd /home/docker/prowlarr
docker compose down prowlarr
docker compose pull prowlarr
docker compose up -d

echo "Arr Stack update complete!"
