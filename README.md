# Dotfiles
The configuration is split up into components based on folders and can individually be applied using 
```
stow <folder>
```


## Setting up 
The configuration is deployed by cloning the repository to a folder in your home directory eg. `~/.dotfiles`

### Write access
To setup write access, one can use identity files.
I usually setup an identity file just for this repo and add a `ssh_config` entry like this:
```
# ~/.ssh/config

Host config.github.com
IdentityFile ~/.ssh/dotfiles
Hostname github.com
``` 

That allows the remote for the repo to be setup with `git@config.github.com` to use the right identity file, without colliding with other identity files on the system.
