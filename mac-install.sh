#!/bin/bash

# This only supports Apple Silicon. There will be no plans to make a port for Intel Macs.

dscl . -create /Users/brewuser
dscl . -create /Users/brewuser UserShell /bin/bash
dscl . -create /Users/brewuser RealName "Homebrew User"
dscl . -create /Users/brewuser UniqueID 510
dscl . -create /Users/brewuser PrimaryGroupID 20
dscl . -create /Users/brewuser NFSHomeDirectory /opt/brewuser
mkdir -p /opt/brewuser
chown -R brewuser:staff /opt/brewuser
