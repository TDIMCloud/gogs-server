#!/bin/bash
apt-get update && apt-get install -y --no-install-recommends \
      sudo nano wget dialog supervisor curl net-tools \
      openssh-server ssh git zip unzip openssl

apt-get autoclean
apt-get autoremove

wget --no-check-certificate https://github.com/gogs/gogs/releases/download/v0.12.3/gogs_0.12.3_linux_amd64.zip
unzip gogs_0.12.3_linux_amd64.zip
rm gogs_0.12.3_linux_amd64.zip
chmod 777 gogs/gogs
mv gogs /system/gogs/assests

wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
rm ngrok-stable-linux-amd64.zip
chmod 777 ngrok
mv ngrok /usr/bin
ngrok authtoken 1yn9VaL87fVjfxXMJh7bRNdmpDp_35btTrVDjoEc9j2b2P6Gc

useradd -rm -d /home/sam -s /bin/bash -g root -G sudo -p $(openssl passwd -1 sam) sam 
