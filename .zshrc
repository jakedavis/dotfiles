ZSH=$HOME/.oh-my-zsh
ZSH_THEME="jakedavis"
DISABLE_AUTO_UPDATE="true"
plugins=(knife ruby python git vagrant)
source $ZSH/oh-my-zsh.sh

alias t="date"
alias b="acpi"
alias gem="nocorrect gem"
alias bundle="nocorrect bundle"
alias sl="nocorrect sl"
alias feh="nocorrect feh"
alias python="nocorrect python2"
alias cookbook="nocorrect cookbook"
alias role="nocorrect role"
alias knife="nocorrect knife"
alias acpi="nocorrect acpi"
alias valgrind="nocorrect valgrind"
alias chpst="nocorrect chpst"
alias rvm="nocorrect rvm"
alias tree="nocorrect tree" 
alias vagrant="nocorrect vagrant"
alias todo="cat ~/todo.md"

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
alias gcl="git clone"
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
export CHEF_VERSION='11.4.0'
export COOKBOOKS=$HOME/dev/simple/cookbooks
export ROLES=$HOME/dev/simple/cookbooks/roles
export BACKEND=$HOME/dev/simple/backend
export OPS=$HOME/dev/simple/ops
export EDITOR=vim
export SHELL=zsh
export TERM=xterm-256color 
export GOPATH=$HOME/.go

# Export PATH a bunch to make it readable
export PATH=$PATH:/opt/vagrant/bin
export PATH=$PATH:/home/jake/.gem/ruby/1.9.1/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/opt/chef/bin
export PATH=$PATH:$HOME/dev/simple/ops/projector/bin
export PATH=$PATH:/usr/local/share/python
export PATH=$PATH:$HOME/dev/ec2/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/.go/bin
export PATH=$PATH:$HOME/.virtualenv/awscli/bin

# Extra stuff
source $HOME/.zsh_additional
source $HOME/custom/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Helpers
function cd { builtin cd "$@" && ls }
. $HOME/custom/z.sh

