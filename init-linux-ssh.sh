#!/usr/bin/env bash

rm -rf docker-compose
git clone git@github.com:deltaplus-ve/docker-compose.git
cd docker-compose
chmod +x init-ssh.sh up.sh down.sh reload.sh
./init-ssh.sh
./up-linux.sh
