#!/usr/bin/env bash
sudo apt-get install -y apt-fast

sudo echo 'Acquire::Languages "none";' >> /etc/apt/apt.conf.d/00aptitude
sudo echo debconf apt-fast/maxdownloads string 16 | debconf-set-selections
sudo echo debconf apt-fast/dlflag boolean true | debconf-set-selections
sudo echo debconf apt-fast/aptmanager string apt-get | debconf-set-selections
