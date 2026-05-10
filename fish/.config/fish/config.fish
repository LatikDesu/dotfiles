# Main Fish Configuration
# Note: Variables, Paths, Aliases, and Tools are loaded automatically from ~/.config/fish/conf.d/

# Disable default greeting
set -g fish_greeting

if status is-interactive
    # Run fastfetch if available
    if command -v fastfetch > /dev/null
        fastfetch
    end

    # Initialize Starship
    # Config path is set in conf.d/variables.fish
    if not test -f "$STARSHIP_CONFIG"
        set -e STARSHIP_CONFIG # use default if fish-specific doesn't exist
    end

    starship init fish | source
end
# opencode
fish_add_path /home/esoraine/.opencode/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
alias neohtop='env WEBKIT_DISABLE_COMPOSITING_MODE=1 neohtop'
