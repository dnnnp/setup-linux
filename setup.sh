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
  gnome-shell-extension-dash-to-panel \
  gnome-shell-extension-desktop-icons \
  gnome-shell-extension-multi-monitors
  
dconf load /apps/guake/ <<<"[general]
abbreviate-tab-names=false
compat-delete='delete-sequence'
display-n=0
history-size=1000
infinite-history=true
max-tab-name-length=100
mouse-display=true
open-tab-cwd=true
prompt-on-quit=true
quick-open-command-line='gedit %(file_path)s'
restore-tabs-notify=true
restore-tabs-startup=true
save-tabs-when-changed=true
scroll-keystroke=true
use-default-font=true
use-popup=true
use-scrollbar=true
use-trayicon=true
window-halignment=0
window-height=50
window-losefocus=false
window-refocus=false
window-tabbar=true
window-width=100

[keybindings/local]
clipboard-copy='<Alt>c'
clipboard-paste='<Alt>v'
close-tab='<Alt>w'
new-tab='<Alt>t'
next-tab='<Alt>Right'
previous-tab='<Alt>Left'

[style/background]
transparency=90

[style/font]
allow-bold=true
palette='#000000000000:#cccc00000000:#4e4e9a9a0606:#c4c4a0a00000:#34346565a4a4:#757550507b7b:#060698209a9a:#d3d3d7d7cfcf:#555557575353:#efef29292929:#8a8ae2e23434:#fcfce9e94f4f:#72729f9fcfcf:#adad7f7fa8a8:#3434e2e2e2e2:#eeeeeeeeecec:#ffffffffffff:#000000000000'
palette-name='Tango'"

dconf load /org/gnome/shell/extensions/ <<<"[arc-menu]
dtp-dtd-state=[true, false]
pinned-app-list=['Firefox Web Browser', 'firefox', 'firefox.desktop', 'Terminal', 'utilities-terminal', 'org.gnome.Terminal.desktop', 'Arc Menu Settings', 'ArcMenu_ArcMenuIcon', 'gnome-extensions prefs arc-menu@linxgem33.com']
position-in-panel='Left'

[arcmenu]
arc-menu-placement='Panel'
available-placement=[false, true, false]
dtp-dtd-state=[true, false]
enable-custom-arc-menu=false
multi-monitor=true
pinned-app-list=['Firefox Web Browser', '', 'firefox.desktop', 'Terminal', '', 'org.gnome.Terminal.desktop', 'ArcMenu Settings', 'ArcMenu_ArcMenuIcon', 'gnome-extensions prefs arcmenu@arcmenu.com']
recently-installed-apps=['org.gnome.tweaks.desktop', 'org.gnome.Extensions.desktop', 'vim.desktop', 'powershell_powershell-preview.desktop', 'powershell_powershell.desktop', 'vlc.desktop', 'thunderbird_thunderbird.desktop', 'flameshot_flameshot.desktop', 'gimp_gimp.desktop', 'barrier_barrier.desktop', 'insomnia_insomnia.desktop', 'beekeeper-studio_beekeeper-studio.desktop', 'pycharm-community_pycharm-community.desktop', 'multipass_gui.desktop', 'intellij-idea-community_intellij-idea-community.desktop', 'netbeans_netbeans.desktop', 'android-studio_android-studio.desktop', 'ca.desrt.dconf-editor.desktop']

[dash-to-panel]
animate-show-apps=false
available-monitors=[0]
hotkeys-overlay-combo='TEMPORARILY'
location-clock='STATUSLEFT'
panel-element-positions='{0:[{element:activitiesButton,visible:false,position:stackedTL},{element:showAppsButton,visible:false,position:stackedTL},{element:leftBox,visible:true,position:stackedTL},{element:taskbar,visible:true,position:stackedTL},{element:centerBox,visible:true,position:stackedBR},{element:rightBox,visible:true,position:stackedBR},{element:dateMenu,visible:true,position:stackedBR},{element:systemMenu,visible:true,position:stackedBR},{element:desktopButton,visible:true,position:stackedBR}]}'
show-activities-button=false
show-show-apps-button=false

[pop-shell]
tile-by-default=false"


git clone https://github.com/pop-os/shell.git
cd shell
make local-install
cd ..
rm shell -rf
