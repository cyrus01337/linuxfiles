#!/usr/bin/env bash
./apt-fast.sh

sudo dpkg --add-architecture i386
sudo apt-fast update
cat ./sources/repositories.txt | xargs -n 1 sudo add-apt-repository -y

cat ./sources/prerequisites.txt | xargs sudo apt-fast install -y

for script in ./prerequisites/*; do
    $script
done
