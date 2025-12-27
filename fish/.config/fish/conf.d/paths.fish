# Paths Configuration

# Bun
set -gx BUN_INSTALL "$HOME/.bun"
fish_add_path "$BUN_INSTALL/bin"

# Yarn & Node
fish_add_path "$HOME/.yarn/bin"
fish_add_path "$HOME/.config/yarn/global/node_modules/.bin"

# Go
fish_add_path "/usr/local/go/bin"
fish_add_path "$HOME/go/bin"
fish_add_path "$HOME/.govm/shim"

# Editor & Tools
fish_add_path "/home/esoraine/Apps/nvim-linux-x86_64/bin"
fish_add_path "$HOME/.opencode/bin"
fish_add_path "$HOME/.local/bin"

# Rust
fish_add_path "$HOME/.cargo/bin"

# Pyenv
fish_add_path "$PYENV_ROOT/bin"

# fnm
fish_add_path "$HOME/.local/share/fnm"
