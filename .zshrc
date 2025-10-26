[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/nvm.zsh ]] && source ~/.zsh/nvm.zsh
[[ -f ~/.zsh/wsl2fix.zsh ]] && source ~/.zsh/wsl2fix.zsh
[[ -f ~/.zsh/goto.zsh ]] && source ~/.zsh/goto.zsh

# Load Starship
eval "$(starship init zsh)"

# Load Direnv
eval "$(direnv hook zsh)"

# bun completions
[ -s "/home/esoraine/.bun/_bun" ] && source "/home/esoraine/.bun/_bun"

# history
export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000
setopt BANG_HIST
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
