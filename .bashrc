source /usr/local/share/chruby/chruby.sh
chruby ruby-2.3.0

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

# Append filetype (/ dir, @ symlink, etc) and add color
alias ls="ls -GF"

export VAGRANT_BOX=saucy
export SIMPLE=$HOME/dev/simple
export OPS=$HOME/dev/simple/ops
export ENG=$HOME/dev/simple/eng
export SEC=$HOME/dev/simple/security
export EDITOR=vim
export GOPATH=$HOME/.go
export GITHUB_USERNAME=jake

# Export PATH a bunch to make it readable
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:$HOME/dev/simple/ops/cloudbank/venv/bin
export PATH=$PATH:$GOPATH/bin

source ~/.bash_additional

function cd { builtin cd "$@" && ls; }
