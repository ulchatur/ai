# fail_docker.sh
set -e
cid=$(docker ps --filter "name=flask-backend-combined" --format "{{.ID}}")
docker kill "$cid"

