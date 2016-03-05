#!/bin/bash

cd /home/ubuntu

sudo apt-get install supervisor xvfb x11vnc xfce4 shimmer-themes gnome-icon-theme-full -y

git clone git://github.com/kanaka/noVNC
# Setting DSIPLAY in .bashrc
echo "export DISPLAY=localhost:99" >> ~/.bashrc

# Create run file
echo 'echo VNC client running at https://$C9_HOSTNAME/vnc.html' > runc9vnc.sh
echo 'echo' >> runc9vnc.sh
echo 'cd' $(pwd) >> runc9vnc.sh
echo supervisord -c supervisord.conf >> runc9vnc.sh
chmod +x runc9vnc.sh
