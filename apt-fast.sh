#!/usr/bin/env bash
apt-get install -y apt-fast

echo 'Acquire::Languages "none";' >> /etc/apt/apt.conf.d/00aptitude
echo debconf apt-fast/maxdownloads string 16 | debconf-set-selections
echo debconf apt-fast/dlflag boolean true | debconf-set-selections
echo debconf apt-fast/aptmanager string apt-get | debconf-set-selections
