# workspace-bootstrap
Automatic workspace provisioner based on ansible

# Requirements
Ubuntu 22.04  

# Start
Install ansible

```
sudo apt-get install ansible
```
Then simply run:
```
make run
```
After first run it fails for `asdf` installation.
Change following to your `~/.zshrc`:
```
plugins=(git asdf zsh-autosuggestions zsh-syntax-highlighting)
```
then logout, login and run again:
```
make run
```
**note:** for getting `gcloud` package to build, run:
```
CLOUDSDK_PYTHON=/usr/bin/python3 make run
```

# Functionalities 
This ansible script:
* Runs on supported operating systems (currently Ubuntu Jammy only) 
* Installs base apt packages
* Installs base snap packages
* Installs asdf utility
* Configures asdf plugins
* Installs oh-my-zsh
* Configures oh-my-zsh
* Installs Docker
* Installs AWS VPN Client

You then need to configure your Oh My Zsh manually
