# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="custom"

DISABLE_AUTO_UPDATE=true

# History settings
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory extendedglob
setopt HIST_IGNORE_DUPS


# virtualenvwrapper
export WORKON_HOME=$HOME/.venvs
export PROJECT_HOME=$HOME/Coding

#export CASE_SENSITIVE=true
#export DISABLE_COLOR=true

plugins=(archlinux celery django git github history-substring-search pip python screen systemd virtualenvwrapper)
source $ZSH/oh-my-zsh.sh

# Customize to your needs...

###################################################
# Override defaults from history-substring-search #
# Bindings for PGUP, PGDN, HOME, END
bindkey '\e[5~' history-substring-search-up
bindkey '\e[6' history-substring-search-down
bindkey '\e[H' beginning-of-line
bindkey '\e[F' end-of-line
# Bindings for UP, DOWN, LEFT, RIGHT
bindkey '\e[A' up-line-or-history
bindkey '\e[B' down-line-or-history
bindkey '\e[C' forward-char
bindkey '\e[D' backward-char
###################################################


export EDITOR=vim
export PATH=$PATH:$HOME/bin:$HOME/Dropbox/bin

alias gitl='git log --pretty=format:"%h (%cn) %s" --graph'
