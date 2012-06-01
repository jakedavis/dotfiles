# DIR/THEME
ZSH=$HOME/custom/oh-my-zsh
ZSH_THEME="gallifrey" # norm

# VARIABLES
COMPLETION_WAITING_DOTS="true"
# CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
# DISABLE_AUTO_TITLE="true"

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

# GENERAL ALIASES
alias xh="xrandr --output HDMI-0 --auto"
alias ls="ls -F --color=auto"
alias chrome="google-chrome"
alias mix="alsamixer"
alias emacs="emacs -f notmuch"

# EXPORTS
export ZDOTDIR="/home/jake"
export EDITOR=emacs
export SHELL=zsh
export TERM=xterm 
export XDG_CONFIG_HOME="/home/jake/.config/"
export TIME="real %f\nuser %f\nsys %f\n"
export OPSCODE_USER="jdinthe503"
export PATH=$PATH:/opt/vagrant/bin:/home/jake/.gem/ruby/1.9.1/bin

# FUNCTIONS
function cd {
    builtin cd "$@" && ls --color
}
