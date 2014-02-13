source /usr/local/share/chruby/chruby.sh
chruby ruby-2.1.0

# PS1 and shell color stuff
export PS1="\\e[1;36m\\u\\e[m@\\e[1;31m\\h\\e[m \\e[1;32m\\W\\e[m: "
export LSCOLORS="exfxcxdxbxegedabagacad"

# Aliases
alias gs="git status"
alias gb="git branch"
alias ga="git add"
alias gc="git commit"
alias gd="git diff --color-words"
alias gpo="git push origin"
alias gpu="git push upstream"
alias gco="git checkout"

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
export PATH=$PATH:$HOME/dev/simple/ops/projector/bin
export PATH=$PATH:/usr/local/share/python
export PATH=$PATH:$HOME/dev/ec2/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/.go/bin
export PATH=$PATH:$HOME/dev/python/bin
export PATH=$PATH:$HOME/dev/simple/ops/cloudbank/bin

# Various exports for various things!
export VAGRANT_BOX=precise
export COOKBOOKS=$HOME/dev/simple/cookbooks
export ROLES=$HOME/dev/simple/cookbooks/roles
export BACKEND=$HOME/dev/simple/backend
export OPS=$HOME/dev/simple/ops
export SEC=$HOME/dev/simple/sec
export EDITOR=vim
export TERM=xterm-256color 
export GOPATH=$HOME/.go

source ~/.bash_additional

# Helpers
function cd { builtin cd "$@" && ls; }