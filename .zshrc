ZSH=$HOME/.oh-my-zsh
ZSH_THEME="jakedavis"
DISABLE_AUTO_UPDATE="true"
plugins=(knife ruby python git vagrant)
source $ZSH/oh-my-zsh.sh
source /usr/local/share/chruby/chruby.sh
chruby ruby-2.1.0

alias t="date"
alias b="acpi"

# Chef/Knife aliases
alias krff="knife role from file"
alias kcu="knife cookbook upload"
alias kcbl="knife cookbook list"
alias kcbd="knife cookbook download"
alias kcbs="knife cookbook show"
alias kdbff="knife data bag from file"
alias ks="knife status"
alias kcd="knife client delete"
alias knd="knife node delete"
alias kcl="knife client list"
alias knl="knife node list"
alias krsl="knife rackspace server list"
alias kec2="knife ec2 server list" 
alias kcsd="knife cookbook site download"
alias kne="knife node edit"
alias kdbs="knife data bag show"
alias kp="knife preflight"

# Supplement oh-my-zsh Git plugin
alias gd="git diff --color-words"
alias gpo="git push origin"
alias gpu="git push upstream"
alias gco="git checkout"

# Vagrant aliases
alias vh="vagrant halt"
alias vs="vagrant status"
alias vd="nocorrect vagrant destroy"
alias vr="vagrant destroy; y; vagrant up"

# Misc
alias xhon="xrandr --output HDMI-0 --auto"
alias xhoff="xrandr --output HDMI-0 --off"
alias ls="ls -F"
alias la="ls -A"
alias lr="ls -AR"
alias chrome="google-chrome"
alias mix="alsamixer"
alias irssi="TERM=screen-256color irssi"

# Various exports for various things!
export VAGRANT_BOX=precise
export COOKBOOKS=$HOME/dev/simple/cookbooks
export ROLES=$HOME/dev/simple/cookbooks/roles
export BACKEND=$HOME/dev/simple/backend
export OPS=$HOME/dev/simple/ops
export SEC=$HOME/dev/simple/sec
export EDITOR=vim
export SHELL=zsh
export TERM=xterm-256color 
export GOPATH=$HOME/.go

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

# Extra stuff
source $HOME/.zsh_additional

# Helpers
function cd { builtin cd "$@" && ls }

# This is the most annoying feature in the universe
DISABLE_CORRECTION="true"
