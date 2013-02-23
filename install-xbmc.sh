#!/bin/sh
sudo add-apt-repository -y ppa:team-xbmc
sudo apt-get update
sudo apt-get install -y xbmc xbmc-standalone git build-essentials compizconfig-settings-manager

# install XVDR plugin to watch live TV

git clone git@github.com:pipelka/xbmc-addon-xvdr.git
cd xbmc-addon-xvdr
./autogen.sh
./configure
make
sudo make install

echo ""
echo "Download the latest SD-XBMC plugins from http://code.google.com/p/sd-xbmc/downloads/list"
echo ""
echo "Enable legacy fullscreen support in ccsm (section 'Workarounds')"
