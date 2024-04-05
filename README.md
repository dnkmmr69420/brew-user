# brew-user
A seperate user that manages homebrew. This would be useful for systems that have multiple users so there would be a user that has the privelege to manage homebrew.

All users can execute programs installed with brew but csn't make any changes in the brew directory except for brew user and of course root (which shouldn't be used for homebrew)

## Installation

Run this in the terminal

```bash
curl -s https://raw.githubusercontent.com/dnkmmr69420/brew-user/main/setup.sh | bash
```

## Uninstallation

Run this to remove homebrew and its other files

```bash
curl -s https://raw.githubusercontent.com/dnkmmr69420/brew-user/main/uninstall.sh | bash
```
