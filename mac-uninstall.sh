#!/bin/bash

# This only supports Apple Silicon. There will be no plans to make a port for Intel Macs.

dscl . -delete /Users/brewuser
rm -rf /opt/brewuser
