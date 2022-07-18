#!/usr/bin/env bash
dpkg --add-architecture i386
sudo apt-fast update
cat ./sources/repositories.txt | xargs -n 1 add-apt-repository -y

./apt-fast.sh
cat ./sources/prerequisites.txt | xargs apt-fast install -y

for script in ./prerequisites/*; do
    $script
done
