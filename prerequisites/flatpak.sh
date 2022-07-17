#!/usr/bin/env bash
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

for package in $(cat ../sources/flatpak.txt); do
    flatpak install -y flathub $package
done
