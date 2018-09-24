#!/bin/sh
set -a
[[ -e .env ]] && source ./.env
[[ -e .secret.env ]] && source ./.secret.env
cmd="docker-compose -f docker-compose.yml $1"
echo $cmd
eval $cmd