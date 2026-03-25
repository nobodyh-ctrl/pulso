#!/bin/bash

VERSION="0.1.0"

case "$1" in

run)

echo "Starting Pulso..."

docker compose -f docker/docker-compose.yml up -d

echo ""
echo "Pulso is running"
echo ""
echo "Dasboard: http://localhost:3000"

;;

stop)

docker compose -f docker/docker-compose.yml down

;;

status)

docker ps

;;

--version)

echo "Pulso version $VERSION"

;;

*)

echo "Pulso CLI"
echo ""
echo "Commands:"
echo "pulso run"
echo "pulso stop"
echo "pulso status"
echo "pulso --version"

;;

esac
