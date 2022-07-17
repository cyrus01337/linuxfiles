#!/usr/bin/env bash
apt install -y zsh
cp -f .zshrc ~
eval "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
