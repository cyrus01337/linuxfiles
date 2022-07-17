#!/usr/bin/env bash
cd ~/Desktop

mkdir archive projects third-party workspaces &> /dev/null
ln -s ~/bin

if [ -d "/mnt/sda3" ]; then
    mounted_user = "/mnt/sda3/Users/Cyrus"

    ln -s "$mounted_user/Desktop/Niceties" niceties
    ln -s "$mounted_user/Desktop/Snippets" snippets

    ln -s "$mounted_user/Music" ~/Windows/
fi
