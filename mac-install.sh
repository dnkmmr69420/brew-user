#!/bin/bash

# This only supports Apple Silicon. There will be no plans to make a port for Intel Macs.

dscl . -create /Users/brew
dscl . -create /Users/brew UserShell /bin/bash
dscl . -create /Users/brew RealName "Homebrew User"
dscl . -create /Users/brew UniqueID 510
dscl . -create /Users/brew PrimaryGroupID 20
dscl . -create /Users/brew NFSHomeDirectory /opt/brewuser
mkdir -p /opt/brewuser
chown -R brewuser:staff /opt/brewuser
