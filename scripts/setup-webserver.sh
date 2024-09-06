#!/bin/bash

# Update and install Nginx
apt-get update
apt-get install -y nginx

# Start and enable Nginx
systemctl start nginx
systemctl enable nginx
