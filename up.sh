#!/bin/sh
source ./.env
source ./.secret.env
cmd="docker-compose -f docker-compose.yml $1"
echo $cmd
eval $cmd