#!/bin/bash

sudo apt update && sudo apt dist-upgrade -y
sudo apt install python3 python3-pip golang snapd build-essential python3-dev guake -y
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 1

python -m pip install -U pip
python -m pip install ansible hcloud

# install snap packages
sudo snap install android-studio --classic
sudo snap install barrier
sudo snap install beekeeper-studio
sudo snap install chromium
sudo snap install code --classic
sudo snap install flameshot
sudo snap install gimp
sudo snap install go --classic
sudo snap install inkscape
sudo snap install insomnia
sudo snap install intellij-idea-community --classic
sudo snap install kotlin --classic
sudo snap install libreoffice
sudo snap install lxd
sudo snap install multipass
sudo snap install netbeans --classic
sudo snap install powershell --classic
sudo snap install pycharm-community --classic
sudo snap install thunderbird
