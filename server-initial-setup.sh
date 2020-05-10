# TODO: These are steps to run right now.  
# Need to make this executable.

docker network create web
docker network create internal

touch /tkh-build/traefik/acme.json

chmod 600 /tkh-build/traefik/acme.json 
