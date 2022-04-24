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

# Functionalities 
This ansible script:
* Runs on supported operating systems (currently Ubuntu Jammy only) 
* Installs base apt packages
* Installs base snap packages
* Installs asdf utility
* Configures asdf plugins
* Installs oh-my-zsh
* Configures oh-my-zsh

You then need to configure your Oh My Zsh manually