#!/usr/bin/env bash

sudo echo "Uninstalling homebrew..."

sudo rm -rf /home/linuxbrew
sudo rm -rf /home/.brewuser

sudo userdel brew

sudo rm -f /home/linuxbrew/.linuxbrew/bin/brewsh
sudo rm -f /home/linuxbrew/.linuxbrew/bin/ebrew
sudo rm -f /home/linuxbrew/.linuxbrew/bin/sbrew

if ! [ -f /usr/etc/profile.d/brew.sh ]; then
  sudo rm -rf /etc/profile.d/brew.sh
fi

sudo echo "Finnished uninstalling homebrew"
