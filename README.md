Also check out [Brew Container](https://github.com/dnkmmr69420/brew-container)

# brew-user

A seperate user that manages homebrew. This would be useful for systems that have multiple users so there would be a user that has the privelege to manage homebrew.

All users can execute programs installed with brew but can't make any changes in the brew directory except for brew user and of course root (which shouldn't be used for homebrew)

# Overview
Brew should work like normal but executing the command would be a little different. These commands use the sudo password.

## Three commands are added

- `brewsh` run this to enter a shell in the brew user

- `ebrew` execute commands with privleges of the brew user (Now fixed)

- `sbrew` runs the `brew` command as brew. Works the same way as the brew command so args and flags would be the same as brew

The `brew` command can be used for things that don't require writing data (like listing packages). If you want to install, uninstall, or update packages, The `sbrew` command is needed.

## Installation

Run this in the terminal

```bash
curl -s https://raw.githubusercontent.com/dnkmmr69420/brew-user/main/curl.sh | bash
```

Mac Installation (Experimental)
```bash
curl -s https://raw.githubusercontent.com/dnkmmr69420/brew-user/main/mac-curl.sh | bash
```

## Uninstallation

Run this to remove homebrew and its other files

```bash
curl -s https://raw.githubusercontent.com/dnkmmr69420/brew-user/main/uninstall.sh | bash
```

Mac Uninstallation (Experimental)

Just run these
```bash
sudo dscl . -delete /Users/brew
sudo rm -rf /opt/brewuser
sudo rm -rf /opt/homebrew
```

# Known issues and workarounds

### homebrew can't read working directory
Workaround: Type `cd /` to change to a workdir that is readable to the brew user.

### Experimental MacOS support now
