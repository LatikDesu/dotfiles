# --- Aliases ---

# Kubernetes
alias k="kubectl"
alias h="helm"

# IaC
alias tf="terraform"
alias a="ansible"
alias ap="ansible-playbook"

# Eza (ls replacement)
alias ls="eza --icons --group-directories-first"
alias ll="eza --icons --group-directories-first -l"
alias lla="eza --icons --group-directories-first -la"

# Docker
# Note: Using (...) instead of $() for command substitution
alias dstop='sudo docker stop $(sudo docker ps -a -q)'
alias dstopall='sudo docker stop $(sudo docker ps -aq)'
alias drm='sudo docker rm $(sudo docker ps -a -q)'
alias dexec='sudo docker exec -ti'
alias dps='sudo docker ps -a'
alias dpss='sudo docker ps -a --format "table {{.Names}}\t{{.State}}\t{{.Status}}\t{{.Image}}" | sed -u 1q; sort'
alias dcrun='sudo docker compose -f'
alias dcr='sudo docker compose up -d'

# Navigation
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Systemd
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

# Apt / System
alias update='sudo apt-get update'
alias upgrade='sudo apt-get update; and sudo apt-get upgrade'
alias install='sudo apt-get install'
alias finstall='sudo apt-get -f install'
alias rinstall='sudo apt-get -f install --reinstall'
alias uninstall='sudo apt-get remove'
alias search='sudo apt-cache search'

# Arch Linux
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

alias shutdown='sudo shutdown -h now'
alias reboot='sudo reboot'

# Neovim
alias v='nvim'
alias vc='NVIM_APPNAME=nvim-nvchad nvim'
alias vz='NVIM_APPNAME=nvim-lazyvim nvim'

# Claude
alias clglm='claude --settings ~/.claude/settings-glm.json'
alias cl='claude --settings ~/.claude/settings.json'
