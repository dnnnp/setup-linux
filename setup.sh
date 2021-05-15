#!/bin/bash

sudo apt update && sudo apt dist-upgrade -y
sudo apt install -y \
  python3 \
  python3-pip \
  golang snapd \
  build-essential \
  python3-dev \
  guake \
  git \
  node-typescript \
  tilix \
  make
  
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

# install gnome shell extensions:
sudo apt install -y \
  gnome-shell-extension-arc-menu \
  gnome-shell-extension-bluetooth-quick-connect \
  gnome-shell-extension-caffeine \
  gnome-shell-extension-dash-to-panel \
  gnome-shell-extension-desktop-icons \
  gnome-shell-extension-disconnect-wifi \
  gnome-shell-extension-draw-on-your-screen \
  gnome-shell-extension-gsconnect \
  gnome-shell-extension-gsconnect-browsers \
  gnome-shell-extension-hard-disk-led \
  gnome-shell-extension-hide-veth \
  gnome-shell-extension-log-out-button \
  gnome-shell-extension-multi-monitors \
  gnome-shell-extension-system-monitor \
  gnome-shell-extension-tilix-dropdown \
  gnome-shell-extension-tilix-shortcut \
  gnome-shell-extension-workspaces-to-dock
  
git clone https://github.com/pop-os/shell.git
cd shell
make local-install
cd ..
rm shell -rf
