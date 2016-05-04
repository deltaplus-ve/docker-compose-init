#!/usr/bin/env bash

rm -rf docker-compose
git clone https://github.com/deltaplus-ve/docker-compose.git
cd docker-compose
chmod +x init.sh up.sh down.sh reload.sh
./init.sh
./up.sh
