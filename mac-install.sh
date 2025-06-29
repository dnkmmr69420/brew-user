#!/bin/bash

# This only supports Apple Silicon. There will be no plans to make a port for Intel Macs.

sudo dscl . -create /Users/brew
sudo dscl . -create /Users/brew UserShell /bin/bash
sudo dscl . -create /Users/brew RealName "Homebrew User"
sudo dscl . -create /Users/brew UniqueID 510
sudo dscl . -create /Users/brew PrimaryGroupID 20
sudo dscl . -create /Users/brew NFSHomeDirectory /opt/brewuser
sudo mkdir -p /opt/brewuser
sudo chown -R brewuser:staff /opt/brewuser

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

sudo chown -R brew:brew /home/linuxbrew

sudo rm -f /opt/homebrew/bin/brewsh
sudo rm -f /opt/homebrew/bin/ebrew
sudo rm -f /opt/homebrew/bin/sbrew
sudo rm -f /opt/brewuser/.bashrc

sudo cp ./mac-bin/brewsh /opt/homebrew/bin/brewsh
sudo cp ./mac-bin/ebrew /opt/homebrew/bin/ebrew
sudo cp ./mac-bin/sbrew /opt/homebrew/bin/sbrew
sudo cp ./mac-bin/.bashrc /opt/brewuser
