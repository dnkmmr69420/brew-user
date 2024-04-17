#!/usr/bin/env bash

sudo rm -rf /home/.brewuser
sudo useradd brew -d /home/.brewuser -u 813
sudo groupmod -g 813 brew
sudo mkdir -p /home/.brewuser
sudo chown -R brew:brew /home/.brewuser

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

sudo chown -R brew:brew /home/linuxbrew

sudo rm -f /home/linuxbrew/.linuxbrew/bin/brewsh
sudo rm -f /home/linuxbrew/.linuxbrew/bin/ebrew
sudo rm -f /home/linuxbrew/.linuxbrew/bin/sbrew
sudo rm -f /home/.brewuser/.bashrc

sudo cp ./bin/brewsh /home/linuxbrew/.linuxbrew/bin/brewsh
sudo cp ./bin/ebrew /home/linuxbrew/.linuxbrew/bin/ebrew
sudo cp ./bin/sbrew /home/linuxbrew/.linuxbrew/bin/sbrew
sudo cp ./bash/.bashrc /home/.brewuser
if ! [ -f /etc/profile.d/brew.sh ]; then
  sudo cp ./profile.d/brew.sh /etc/profile.d
fi

sudo chmod +x /home/linuxbrew/.linuxbrew/bin/brewsh
sudo chmod +x /home/linuxbrew/.linuxbrew/bin/ebrew
sudo chmod +x /home/linuxbrew/.linuxbrew/bin/sbrew

sudo ln -sf ./.linuxbrew /home/linuxbrew/brew
