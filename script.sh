#!/bin/sh

sudo yum install -y docker

sudo cat <<EOL > /etc/systemd/system/bmi-calc.service
[Unit]
Description=My Docker Container
Requires=docker.service
After=docker.service

[Service]
Restart=always
ExecStart=/usr/bin/docker start -a mycontainer
ExecStop=/usr/bin/docker stop -t 10 mycontainer

[Install]
WantedBy=multi-user.target
EOL

sudo systemctl daemon-reload

sudo systemctl enable bmi-calc.service

sudo systemctl start bmi-calc.service

sudo docker pull xv0idx/bmi-calc:v2

sudo docker run -d -p 80:80  xv0idx/bmi-calc:v2
