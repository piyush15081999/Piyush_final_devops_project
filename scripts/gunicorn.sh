#!/usr/bin/bash
sudo cp /home/ubuntu/bus_resv/gunicorn/gunicorn.socket  /etc/systemd/system/gunicorn.socket
sudo cp /home/ubuntu/bus_resv/gunicorn/gunicorn.service  /etc/systemd/system/gunicorn.service

sudo systemctl start gunicorn.service
sudo systemctl enable gunicorn.service

sudo systemctl start gunicorn.socket
sudo systemctl enable gunicorn.socket
