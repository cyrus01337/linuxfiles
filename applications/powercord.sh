#!/usr/bin/env bash
cd ~/Desktop/third-party
git clone https://github.com/cyrus01337/my-powercord-setup.git
cd powercord
git submodule update --init --recursive
git submodule update --remote --recursive
npm i
npm run plug
