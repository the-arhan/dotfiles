# XDG defaults keep caches and user data out of the home directory root.
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export EDITOR="${EDITOR:-code --wait}"
export VISUAL="${VISUAL:-$EDITOR}"
export PAGER="${PAGER:-less -FRX}"

typeset -U path PATH
path=("$HOME/.local/bin" "$HOME/bin" $path)
