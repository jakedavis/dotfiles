export VOLTA_HOME="$HOME/.volta"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:/opt/homebrew/bin"
export PATH="$PATH:$GOPATH/bin"
export PATH="$VOLTA_HOME/bin:$PATH"
export GOPATH=$HOME/.golang

# Git aliases
alias gs="git status"
alias gb="git branch"
alias ga="git add"
alias gc="git commit"
alias gd="git diff --color-words"
alias gp="git push"
alias gpo="git push origin"
alias gco="git checkout"
alias tf="terraform"
alias ls="ls -GF"
alias ax="aws-vault exec"

export GITHUB_USER=jakedavis
export AWS_REGION="us-west-2"
export AWS_DEFAULT_REGION="us-west-2"
export AWS_SESSION_TOKEN_TTL="8h"
export AWS_ASSUME_ROLE_TTL="8h"
export AWS_ROLE_SESSION_NAME="jake"
export BASH_SILENCE_DEPRECATION_WARNING=1

function cd { builtin cd "$@" && ls; }

eval "$(starship init bash)"
. "$HOME/.cargo/env"
