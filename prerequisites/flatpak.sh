#!/usr/bin/env bash
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
cat ./sources/flatpak.txt | xargs flatpak install -y flathub
