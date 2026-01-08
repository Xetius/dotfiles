export TERM='xterm-256color'
export XDG_CONFIG_HOME="${HOME}/.config"
export DOTFILES="${XDG_CONFIG_HOME}"

# editor
export EDITOR="nvim"
export VISUAL="nvim"

# zsh
export HISTFILE="$HOME/.zhistory"
export HISTSIZE=100000
export SAVEHIST=100000

export NODE_TLS_REJECT_UNAUTHORIZED=0

if [[ "$(hostname)" == "lontngm-047.local" ]]; then
    export AWS_PROFILE=DevOpsAdmin

    test -f "${DOTFILES}/zsh/secrets" && source "$_"
fi


