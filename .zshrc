#!/usr/bin/env zsh

fpath=($DOTFILES/zsh/plugins $fpath)

# Navigation

setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt CDABLE_VARS
setopt EXTENDED_GLOB

# HISTORY

setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY

bindkey -v

# ALIASES
source $DOTFILES/zsh/aliases
# Command Buffer Hotkeys
source $DOTFILES/zsh/hotkeys

export KEYTIMEOUT=1

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit && compinit
  autoload -Uz bashcompinit && bashcompinit
fi

# load version control info.  Used in eza command (ls replacement)
autoload -Uz vcs_info

# Open buffer line in editor
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

bindkey ' ' magic-space

# extended moves commands.
autoload zmv

eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"
eval "$(thefuck --alias)"
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/xetius.omp.json)"

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

source <(kubectl completion zsh)
if command -v aws_completer >/dev/null 2>&1; then
  complete -C aws_completer aws
elif [ -x "/usr/local/bin/aws_completer" ]; then
  complete -C "/usr/local/bin/aws_completer" aws
elif [ -x "/opt/homebrew/bin/aws_completer" ]; then
  complete -C "/opt/homebrew/bin/aws_completer" aws
fi

export PATH=$HOME/.local/bin:$(brew --prefix)/bin:$PATH

