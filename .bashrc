source /usr/local/share/chruby/chruby.sh
chruby ruby-2.1.1

# z.sh
. `brew --prefix`/etc/profile.d/z.sh

# PS1 and shell color stuff
#export PS1="\\e[1;36m\\u\\e[m\\e[1;30m@\\e[m\\e[1;31m\\h\\e[m \\e[1;32m\\W\\e[m\\e[1;33m\$(__git_ps1)\\e[m: "
export PS1="\e[1;36m\u\e[m\e[1;30m@\e[m\e[1;31m\h\e[m \e[1;32m\W\e[m\e[1;33m\$(__git_ps1)\e[m: "
export LSCOLORS="gxfxcxdxbxegedabagacad"

# Subset "hub" within "git"
eval "$(hub alias -s)"

# Aliases 
alias gs="git status"
alias gb="git branch"
alias ga="git add"
alias gc="git commit"
alias gd="git diff --color-words"
alias gpo="git push origin"
alias gpu="git push upstream"
alias gco="git checkout"
alias gpr="hub pull-request"

## ghi
alias comment="ghi comment"

export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
#export JAVA_HOME=$(/usr/libexec/java_home -v 1.8.0)

# Vagrant aliases
alias vh="vagrant halt"
alias vs="vagrant status"
alias vd="vagrant destroy"

# Do want appended filetype (/ dir, @ symlink, etc)
# Do want colors
alias ls="ls -GF"

# Export PATH a bunch to make it readable
export PATH=$PATH:/opt/vagrant/bin
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/opt/chef/bin
export PATH=$PATH:$HOME/dev/simple/ops/projector/venv/bin
export PATH=$PATH:/usr/local/share/python
export PATH=$PATH:$HOME/dev/ec2/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/.go/bin
export PATH=$PATH:$HOME/dev/python/bin
export PATH=$PATH:$HOME/dev/simple/ops/cloudbank/venv/bin
export PATH=$PATH:$HOME/custom/scripts
export PATH=$PATH:$HOME/dev/simple/ops/refract/bin
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

# Various exports for various things!
export VAGRANT_BOX=saucy
export COOKBOOKS=$HOME/dev/simple/ops/cookbooks
export ROLES=$HOME/dev/simple/cookbooks/roles
export BACKEND=$HOME/dev/simple/backend
export ANALYTICS=$HOME/dev/simple/analytics
export OPS=$HOME/dev/simple/ops
export ENG=$HOME/dev/simple/eng
export SEC=$HOME/dev/simple/security
export EDITOR=vim
#export TERM=xterm-256color 
export GOPATH=$HOME/.go

source ~/.bash_additional
source ~/.hub_tab_completion.sh

# Helpers
function gitclean { 
  rm -rf $PWD/.git/refs/heads/* $PWD/.git/refs/remotes/origin/*;
  git pull;
}

function cd { builtin cd "$@" && ls; }
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

source ~/.git-prompt.sh
