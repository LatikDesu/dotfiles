# Environment Variables
set -gx EDITOR nvim
set -gx KUBE_EDITOR nvim

set -gx VAGRANT_DEFAULT_PROVIDER "hyperv"
set -gx VAGRANT_WSL_ENABLE_WINDOWS_ACCESS "1"

# Pyenv Root (Needed before path)
set -gx PYENV_ROOT "$HOME/.pyenv"

# Starship Config
set -gx STARSHIP_CONFIG "$HOME/.config/starship_fish.toml"
