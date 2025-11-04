#!/bin/bash
cd /home/$USER && git clone https://github.com/claudemods/claudemods-blue-konsole
cp -r /home/$USER/claudemods-blue-konsole/claudemods-blue.colorscheme /home/$USER/.local/share/konsole
cp -r /home/$USER/claudemods-blue-konsole/claudemods-blue.profile /home/$USER/.local/share/konsole
sed -i '/^\[Desktop Entry\]/,/^\[/ s/^DefaultProfile=.*/DefaultProfile=claudemods-blue.profile/' ~/.config/konsolerc
rm -rf /home/$USER/claudemods-blue-konsole
sleep 1
killall konsole 
nohup konsole &
