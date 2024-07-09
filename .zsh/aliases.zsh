# Alias
# ---
#
alias k="kubectl"
alias h="helm"
alias tf="terraform"
alias a="ansible"
alias ap="ansible-playbook"

alias code="open -a 'Visual Studio Code'"

alias ls="eza --icons --group-directories-first"
alias ll="eza --icons --group-directories-first -l"
alias lla="eza --icons --group-directories-first -la"

# DOCKER - All Docker commands start with "d" AND Docker Compose commands start with "dc"
alias dstop='sudo docker stop $(sudo docker ps -a -q)' # usage: dstop container_name
alias dstopall='sudo docker stop $(sudo docker ps -aq)' # stop all containers
alias drm='sudo docker rm $(sudo docker ps -a -q)' # usage: drm container_name
alias dexec='sudo docker exec -ti' # usage: dexec container_name (to access container terminal)
alias dps='sudo docker ps -a' # running docker processes
alias dpss='sudo docker ps -a --format "table {{.Names}}\t{{.State}}\t{{.Status}}\t{{.Image}}" | (sed -u 1q; sort)' # running docker processes as nicer table

alias dp600='sudo chown -R root:root $HOME/docker_data/secrets ; sudo chmod -R 600 $HOME/docker_data/secrets ; sudo chown -R root:root $HOME/docker_data/.env ; sudo chmod -R 600 $HOME/docker_data/.env' # re-lock permissions
alias dp777='sudo chown -R $USER:$USER $HOME/docker_data/secrets ; sudo chmod -R 777 $HOME/docker_data/secrets ; sudo chown -R $USER:$USER $HOME/docker_data/.env ; sudo chmod -R 777 $HOME/docker_data/.env' # open permissions for editing

# DOCKER COMPOSE
alias dcrun='sudo docker-compose -f'


# NAVIGATION
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# SYSTEMD START, STOP AND RESTART
alias ctlreload='sudo systemctl daemon-reload'
alias ctlstart='sudo systemctl start'
alias ctlstop='sudo systemctl stop'
alias ctlrestart='sudo systemctl restart'
alias ctlstatus='sudo systemctl status'
alias ctlenable='sudo systemctl enable'
alias ctldisable='sudo systemctl disable'
alias ctlactive='sudo systemctl is-active'

alias sshstart='ctlstart ssh'
alias sshstop='ctlstop ssh'
alias sshrestart='ctlrestart ssh'
alias sshstatus='ctlstatus ssh'

# INSTALLATION AND UPGRADE
alias update='sudo apt-get update'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'
alias install='sudo apt-get install'
alias finstall='sudo apt-get -f install'
alias rinstall='sudo apt-get -f install --reinstall'
alias uninstall='sudo apt-get remove'
alias search='sudo apt-cache search'

# SHUTDOWN AND RESTART
alias shutdown='sudo shutdown -h now'
alias reboot='sudo reboot'