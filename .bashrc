source /usr/local/opt/chruby/share/chruby/chruby.sh
chruby 2.3.1

# Color support, just nice sugar
BBlack='\[\e[1;30m\]'
BRed='\[\e[1;31m\]'
BGreen='\[\e[1;32m\]'
BYellow='\[\e[1;33m\]'
BBlue='\[\e[1;34m\]'
BPurple='\e[1;35m\'
BCyan='\[\e[1;36m\]'
BWhite='\[\e[1;37m\]'
NWhite='\[\e[0;37m\]'

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
export PS1="$BCyan\u$BWhite/$BRed\W$BWhite@$BBlack\$(parse_git_branch)$NWhite: "

# Support NVM
export NVM_DIR="$HOME/.nvm"

# Subset "hub" within "git"
eval "$(hub alias -s)"

# Git aliases
alias gs="git status"
alias gb="git branch"
alias ga="git add"
alias gc="git commit"
alias gd="git diff --color-words"
alias gpo="git push origin"
alias gpu="git push upstream"
alias gco="git checkout"
alias gpr="hub pull-request"

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8.0)

alias ls="ls -GF"

export OPS=$HOME/dev/github.banksimple.com/ops
export EDITOR=vim
export GOPATH=$HOME/.go
export GITHUB_USER=jakedavis

# This is so I can bring my bashrc to work and keep secrets in a separate file
if [ -e ~/.bash_additional ]; then
  source ~/.bash_additional
fi

function cd { builtin cd "$@" && ls; }
