#!/usr/bin/env bash
./apt-fast.sh

apt-fast install -y curl flatpak git python-pip3 wget xdotool

for script in ./prerequisites/*; do
    $script
done
