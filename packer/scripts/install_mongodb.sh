#!/bin/bash
apt-get install -y mongodb

systemctl enable mongodb
systemctl start mongodb
