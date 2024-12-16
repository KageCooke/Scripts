#!/bin/bash

containers=( "sonarr" "radarr" "prowlarr" )

for container in "${containers[@]}"
do
	echo "Updating $container"
	cd /home/docker/$container
	docker compose down $container
	docker compose pull $container
	docker compose up -d
done

echo "Arr Stack update complete!"
