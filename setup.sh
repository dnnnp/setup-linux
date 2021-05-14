#!/bin/bash

sudo apt update && sudo apt dist-upgrade -y
sudo apt install python3 python3-pip golang snapd build-essential python3-dev -y
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 1

python -m pip install ansible hcloud