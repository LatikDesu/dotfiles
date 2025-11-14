# ---
# Nvim configs
alias v='nvim'
alias vz='NVIM_APPNAME=nvim-lazyvim nvim'

# ls alias
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

# DOCKER COMPOSE
alias dcrun='sudo docker compose -f'
alias dcr='sudo docker compose up -d'

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

# INSTALLATION AND UPGRADE (Debian)
alias update='sudo apt-get update'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'
alias install='sudo apt-get install'
alias finstall='sudo apt-get -f install'
alias rinstall='sudo apt-get -f install --reinstall'
alias uninstall='sudo apt-get remove'
alias search='sudo apt-cache search'

# INSTALLATION AND UPGRADE (Arch Linux)
alias pacupdate='sudo pacman -Syu'
alias pacinstall='sudo pacman -S'
alias pacremove='sudo pacman -R'
alias pacsearch='pacman -Ss'
alias pacinfo='pacman -Si'
alias paclist='pacman -Q'
alias pacclean='sudo pacman -Scc'
alias yays='yay -Ss'
alias yayi='yay -S'
alias yayr='yay -R'
alias yayu='yay -Syu'

# SHUTDOWN AND RESTART
alias shutdown='sudo shutdown -h now'
alias reboot='sudo reboot'
