# zsh config shortcut
export ZSHRC="$ZDOTDIR/.zshrc"

# Ranger config
export RANGER_LOAD_DEFAULT_RC=FALSE

# bat config
export BAT_THEME=ansi

# fzf config
export FZF_CTRL_T_OPTS="--preview 'bat --color=always {}'"
export FZF_DEFAULT_COMMAND="fd --type f"
