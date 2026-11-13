# Keep the interactive shell setup modular and safe without optional tools.
[[ -o interactive ]] || return

for config in environment aliases functions; do
  [[ -r "$HOME/.config/shell/$config.zsh" ]] && source "$HOME/.config/shell/$config.zsh"
done

if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi

autoload -Uz compinit
compinit -d "${XDG_CACHE_HOME:-$HOME/.cache}/zsh/zcompdump"
