#!/usr/bin/env bash

sudo rm -rf /home/.brewuser
sudo useradd brew -d /home/.brewuser -u 813
sudo mkdir -p /home/.brewuser
sudo chown -R brew:brew /home/.brewuser

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

sudo chown -R brew:brew /home/linuxbrew

sudo rm -f /home/linuxbrew/.linuxbrew/bin/brewsh
sudo rm -f /home/linuxbrew/.linuxbrew/bin/ebrew
sudo rm -f /home/linuxbrew/.linuxbrew/bin/sbrew

sudo wget -P /home/linuxbrew/.linuxbrew/bin https://raw.githubusercontent.com/dnkmmr69420/brew-user/main/bin/brewsh
sudo wget -P /home/linuxbrew/.linuxbrew/bin https://raw.githubusercontent.com/dnkmmr69420/brew-user/main/bin/ebrew
sudo wget -P /home/linuxbrew/.linuxbrew/bin https://raw.githubusercontent.com/dnkmmr69420/brew-user/main/bin/sbrew
if ! [ -f /etc/profile.d/brew.sh ]; then
  sudo wget -P /etc/profile.d https://raw.githubusercontent.com/dnkmmr69420/brew-user/main/profile.d/brew.sh
fi

sudo chmod +x /home/linuxbrew/.linuxbrew/bin/brewsh
sudo chmod +x /home/linuxbrew/.linuxbrew/bin/ebrew
sudo chmod +x /home/linuxbrew/.linuxbrew/bin/sbrew
