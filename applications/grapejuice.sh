#!/usr/bin/env bash
curl https://gitlab.com/brinkervii/grapejuice/-/raw/master/ci_scripts/signing_keys/public_key.gpg | sudo tee /usr/share/keyrings/grapejuice-archive-keyring.gpg > /dev/null
sudo tee /etc/apt/sources.list.d/grapejuice.list <<< 'deb [signed-by=/usr/share/keyrings/grapejuice-archive-keyring.gpg] https://brinkervii.gitlab.io/grapejuice/repositories/debian/ universal main' > /dev/null
sudo apt-fast update
sudo apt-fast install -y grapejuice
grapejuice-gui

cd /tmp
wget https://pastebin.com/raw/5SeVb005 -O install.py
curl -O https://dl.winehq.org/wine/wine-mono/7.3.0/wine-mono-7.3.0-x86.msi
python3 install.py

WINE_PREFIX="$(realpath ~/.local/share/grapejuice/prefixes/studio)"

winetricks wine-mono-7.3.0-x86.msi
