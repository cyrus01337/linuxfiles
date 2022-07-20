#!/usr/bin/env bash
cd /tmp
curl -qsSL https://discord.com/api/download/canary?platform=linux -o discord.deb
chmod u+x discord.deb
sudo apt-fast install -y ./discord.deb
