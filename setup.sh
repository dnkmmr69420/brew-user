#!/usr/bin/env bash

sudo rm -rf /home/.brewuser
sudo useradd brew -d /home/.brewuser

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

sudo chown -R brew:brew /home/linuxbrew

sudo wget -P /usr/local/bin https://raw.githubusercontent.com/dnkmmr69420/brew-user/main/bin/brewsh
sudo wget -P /usr/local/bin https://raw.githubusercontent.com/dnkmmr69420/brew-user/main/bin/ebrew
sudo wget -P /usr/local/bin https://raw.githubusercontent.com/dnkmmr69420/brew-user/main/bin/sbrew

sudo chmod +x /usr/local/bin/brewsh
sudo chmod +x /usr/local/bin/ebrew
sudo chmod +x /usr/local/bin/sbrew
