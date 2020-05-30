#! /usr/bin/env bash

sudo cp godaddy_ddns.py /usr/local/bin/
sudo chmod a+x /usr/local/bin/godaddy_ddns.py
sudo cp godaddy_ddns.conf /etc/
sudo mkdir -p /usr/local/lib/systemd/system
sudo cp systemd-timer/godaddy-ddns.service /usr/local/lib/systemd/system/
sudo cp systemd-timer/godaddy-ddns.timer /usr/local/lib/systemd/system/
systemctl enable godaddy-ddns.timer
systemctl start godaddy-ddns.timer
systemctl status godaddy-ddns.timer
systemctl status godaddy-ddns.service
