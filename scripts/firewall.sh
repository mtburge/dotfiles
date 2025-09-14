#!/bin/bash
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow docker to use host dns
sudo ufw allow in proto udp from 172.16.0.0/12 to 172.17.0.1 port 53 comment 'allow-docker-dns'

# enable the firewall
sudo ufw --force enable
sudo systemctl enable ufw
sudo ufw-docker install
sudo ufw reload
