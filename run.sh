#!/bin/bash

docker run --rm \
  -v $HOME/src/certbot/certs:/root/certs \
  -v $(pwd)/Caddyfile:/etc/Caddyfile \
  -v $(pwd):/srv \
  --network="host" \
  abiosoft/caddy
