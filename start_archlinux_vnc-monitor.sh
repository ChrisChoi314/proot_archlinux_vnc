#!/bin/sh

pulseaudio --start --load='module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1' --exit-idle-time=-1
proot-distro login --bind "$HOME":/mnt/termux-home --bind /sdcard:/mnt/sdcard --user user archlinux -- sh -c 'sed -i "s/^geometry=.*$/geometry=1920x1080/" /home/user/.vnc/config && vncserver :0'
