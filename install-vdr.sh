#!/bin/sh

sudo cp dvb-usb-it9135-0*.fw /lib/firmware/
sudo cp pl-Katowice /usr/share/dvb/dvb-t/

sudo apt-add-repository -y ppa:yavdr/unstable-vdr
sudo apt-get update
sudo apt-get install vdr vdr-dev vdr-plugin-xvdr

sudo mv /var/lib/vdr/channels.conf /var/lib/vdr/channels.conf.bak
sudo cp channels.conf /var/lib/vdr/
