# DIR/THEME
ZSH=$HOME/custom/oh-my-zsh
ZSH_THEME="gallifrey"

# VARIABLES
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_UPDATE="true"

# PLUGINS
plugins=(git knife ruby python)
source $ZSH/oh-my-zsh.sh

# NOCORRECT ALIASES
alias sl="nocorrect sl"
alias feh="nocorrect feh"
alias python="nocorrect python2"
alias cookbook="nocorrect cookbook"
alias role="nocorrect role"
alias knife="nocorrect knife"
alias acpi="nocorrect acpi"
alias valgrind="nocorrect valgrind"
alias rvm="nocorrect rvm"

# GENERAL ALIASES
alias xh="xrandr --output HDMI-0 --auto"
alias ls="ls -F --color=auto"
alias chrome="google-chrome"
alias mix="alsamixer"
alias irssi="if [[ -n $TMUX ]]; then TERM=screen-256color irssi; else irssi; fi"
alias emacs="if [[ -n $TMUX ]]; then TERM=rxvt-256color emacs; else emacs; fi"

# EXPORTS
export ZDOTDIR="/home/jake"
export EDITOR=emacs
export SHELL=zsh
#export TERM=screen-256color 
export XDG_CONFIG_HOME="/home/jake/.config/"
export OPSCODE_USER="jdinthe503"
export PATH=$PATH:$HOME/.rvm/bin:/opt/vagrant/bin:/home/jake/.gem/ruby/1.9.1/bin:/usr/local/bin

# FUNCTIONS
function cd {
    builtin cd "$@" && ls --color
}

