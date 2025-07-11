#!/bin/bash

# This only supports Apple Silicon. There will be no plans to make a port for Intel Macs.

Echo "Installing Homebrew..."

sudo dscl . -create /Users/brew
sudo dscl . -create /Users/brew UserShell /bin/bash
sudo dscl . -create /Users/brew RealName "Homebrew User"
sudo dscl . -create /Users/brew UniqueID 510
sudo dscl . -create /Users/brew PrimaryGroupID 20
sudo dscl . -create /Users/brew NFSHomeDirectory /opt/brewuser
sudo dseditgroup -o edit -a brew -t user admin
sudo chgrp -R admin /opt/homebrew
sudo mkdir -p /opt/brewuser
sudo chown -R brew:staff /opt/brewuser

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

sudo chown -R brew:staff /opt/homebrew

sudo rm -f /opt/homebrew/bin/brewsh
sudo rm -f /opt/homebrew/bin/ebrew
sudo rm -f /opt/homebrew/bin/sbrew
sudo rm -f /opt/brewuser/.bashrc
sudo rm -f /opt/brewuser/info.txt

sudo cp ./mac-bin/brewsh /opt/homebrew/bin/brewsh
sudo cp ./mac-bin/ebrew /opt/homebrew/bin/ebrew
sudo cp ./mac-bin/sbrew /opt/homebrew/bin/sbrew
sudo chmod +x /opt/homebrew/bin/brewsh
sudo chmod +x /opt/homebrew/bin/ebrew
sudo chmod +x /opt/homebrew/bin/sbrew
sudo cp ./mac-bash/.bashrc /opt/brewuser
sudo cp ./info.txt /opt/brewuser/info.txt

