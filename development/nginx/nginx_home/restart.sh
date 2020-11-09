#!/bin/sh
echo "Finding nginx container id..."
nginx_id=$(docker ps -qf "name=nginx_nginx_1")
echo "nginx id: ${nginx_id}"

echo "Test Nginx"
docker exec ${nginx_id} nginx -t
echo "Restart Nginx"
docker exec ${nginx_id} nginx -s reload
echo "DONE"
