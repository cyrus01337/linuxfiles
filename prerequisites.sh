#!/usr/bin/env bash
cat ./sources/repositories.txt | xargs -n 1 add-apt-repository -y

./apt-fast.sh

cat ./sources/packages.txt | xargs apt-fast install -y

tlp start

for script in ./prerequisites/*; do
    $script
done
