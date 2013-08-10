# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="custom"
plugins=(archlinux celery django git github pip python screen systemd taskwarrior virtualenvwrapper)
source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export EDITOR=vim

# History settings
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory extendedglob
setopt HIST_IGNORE_DUPS


# virtualenvwrapper
export WORKON_HOME=$HOME/.venvs
export PROJECT_HOME=$HOME/Coding
