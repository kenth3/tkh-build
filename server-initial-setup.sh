# TODO: These are steps to run right now.  
# Need to make this executable.

docker network create web

touch /acme.json

chmod 600 /acme.json 

docker run -d \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $PWD/traefik.toml:/traefik.toml \
  -v $PWD/acme.json:/acme.json \
  -p 80:80 \
  -p 443:443 \
  -l traefik.frontend.rule=Host:monitor.thomaskenthurd.com \
  -l traefik.port=8080 \
  --network web \
  --name traefik \
  traefik:1.7.2-alpine