#!/usr/bin/env bash

sudo rm -rf /home/.brewuser

sudo useradd brew -d /home/.brewuser

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

sudo chown -R brew:brew /home/linuxbrew
