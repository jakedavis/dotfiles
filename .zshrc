ZSH=$HOME/custom/oh-my-zsh
ZSH_THEME="gallifrey"
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_UPDATE="true"
plugins=(knife ruby python git vagrant)
source $ZSH/oh-my-zsh.sh

alias t="date"
alias b="acpi"
alias bundle="nocorrect bundle"
alias sl="nocorrect sl"
alias feh="nocorrect feh"
alias python="nocorrect python2"
alias cookbook="nocorrect cookbook"
alias role="nocorrect role"
alias knife="nocorrect knife"
alias acpi="nocorrect acpi"
alias valgrind="nocorrect valgrind"
alias rvm="nocorrect rvm"

# Chef/Knife aliases
alias krff="knife role from file"
alias kcu="knife cookbook upload"
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

# Supplement oh-my-zsh Git plugin
alias gcl="git clone"
alias gd="git diff"

# Vagrant aliases
alias vp="vagrant provision"
alias vu="vagrant up"
alias vh="vagrant halt"

# Misc
alias xhon="xrandr --output HDMI-0 --auto"
alias xhoff="xrandr --output HDMI-0 --off"
alias ls="ls -F --color=auto"
alias la="ls -A"
alias lr="ls -AR"
alias chrome="google-chrome"
alias mix="alsamixer"
alias irssi="TERM=screen-256color irssi"

export EDITOR=vim
export SHELL=zsh
export TERM=xterm-256color 
export OPSCODE_USER="jdinthe503"
export OPSCODE_ORG="jakedavis"
export PATH=$PATH:$HOME/.rvm/bin:/opt/vagrant/bin:/home/jake/.gem/ruby/1.9.1/bin:/usr/local/bin

function cd {
    builtin cd "$@" && ls --color
}

. /home/jake/custom/scripts/z.sh
function precmd () {
    _z --add "$(pwd -P)"
}
