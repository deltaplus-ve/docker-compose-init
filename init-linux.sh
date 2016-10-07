#!/usr/bin/env bash

rm -rf docker-compose
git clone https://github.com/deltaplus-ve/docker-compose.git
cd docker-compose
git checkout swagger-graphql
chmod +x init.sh up.sh down.sh reload.sh
./init.sh
./up-linux.sh
