#!/bin/bash

if ! command -v git &> /dev/null
then
    echo "git is not installed. Aborting..."
    exit 1
fi

mkdir -p $HOME/.tmp
cd $HOME/.tmp
git clone https://github.com/dnkmmr69420/brew-user.git
cd brew-user
bash mac-install.sh
rm -rf $HOME/.tmp/brew-user
