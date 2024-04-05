#!/usr/bin/env bash

sudo rm -rf /home/.brewuser
sudo useradd brew -d /home/.brewuser
sudo mkdir -p /home/.brewuser
sudo chown -R brew:brew /home/.brewuser

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

sudo chown -R brew:brew /home/linuxbrew

sudo rm -f /usr/local/bin/brewsh
sudo rm -f /usr/local/bin/ebrew
sudo rm -f /usr/local/bin/sbrew

sudo wget -P /usr/local/bin https://raw.githubusercontent.com/dnkmmr69420/brew-user/main/bin/brewsh
sudo wget -P /usr/local/bin https://raw.githubusercontent.com/dnkmmr69420/brew-user/main/bin/ebrew
sudo wget -P /usr/local/bin https://raw.githubusercontent.com/dnkmmr69420/brew-user/main/bin/sbrew
if ! [ -f /etc/profile.d/brew.sh ]; then
  sudo wget -P /etc/profile.d https://raw.githubusercontent.com/dnkmmr69420/brew-user/main/profile.d/brew.sh
fi

sudo chmod +x /usr/local/bin/brewsh
sudo chmod +x /usr/local/bin/ebrew
sudo chmod +x /usr/local/bin/sbrew
