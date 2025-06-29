#!/bin/bash

# This only supports Apple Silicon. There will be no plans to make a port for Intel Macs.

sudo dscl . -delete /Users/brew
sudo rm -rf /opt/brewuser
sudo rm -rf /opt/homebrew
