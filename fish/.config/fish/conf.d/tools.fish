# Tool Initializations

if status is-interactive
    # Pyenv
    if command -v pyenv > /dev/null
        pyenv init - | source
    end

    # Direnv
    if command -v direnv > /dev/null
        direnv hook fish | source
    end

    # fnm
    if command -v fnm > /dev/null
        fnm env --use-on-cd --shell fish | source
    end
end
