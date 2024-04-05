#!/usr/bin/env bash

sudo echo "Uninstalling homebrew..."

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)

sudo echo "Finnishing up..."

sudo rm -rf /home/linuxbrew
sudo rm -rf /home/.brewuser

sudo userdel brew

sudo rm -rf /usr/local/bin/brewsh
sudo rm -rf /usr/local/bin/ebrew
sudo rm -rr /usr/local/bin/sbrew

if ! [ -f /usr/etc/profile.d/brew.sh ]; then
  sudo rm -rf /etc/profile.d/brew.sh
fi

sudo echo "Finnished uninstalling homebrew"
