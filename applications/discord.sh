#!/usr/bin/env bash
cd /tmp
curl -qsSL https://discord.com/api/download/canary?platform=linux -o discord.deb
chmox u+x discord.deb
discord.deb
