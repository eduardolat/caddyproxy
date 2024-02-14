#!/bin/bash

envsubst < ./Caddyfile > ./Caddyfile.tmp
exec caddy run --config ./Caddyfile.tmp
