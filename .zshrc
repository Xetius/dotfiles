alias ls='eza --color=auto --icons'
alias ll='ls -la --git --git-repos'
alias llt='ll -T'
alias lld='ll -D'
alias vim='nvim'
alias gst='git status'
alias gpr='git pull -r'
alias k='kubectl'
alias z='zoxide'
alias vc='vim ~/.zshrc'
alias sa='source ~/.zshrc'

eval "$(zoxide init zsh)"
eval "$(thefuck --alias)"
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/simple.omp.yaml)"
