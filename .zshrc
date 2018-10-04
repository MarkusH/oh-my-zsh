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
source /usr/bin/virtualenvwrapper.sh

#export CASE_SENSITIVE=true
#export DISABLE_COLOR=true

plugins=(archlinux celery django git github history-substring-search pip python screen systemd)
source $ZSH/oh-my-zsh.sh

# Customize to your needs...

unsetopt correctall

###################################################
# Override defaults from history-substring-search #
# Bindings for PGUP, PGDN, HOME, END
bindkey '\e[5~' history-substring-search-up
bindkey '\e[6~' history-substring-search-down
bindkey '\e[H' beginning-of-line
bindkey '\e[F' end-of-line
# Bindings for UP, DOWN, LEFT, RIGHT
bindkey '\e[A' up-line-or-history
bindkey '\e[B' down-line-or-history
bindkey '\e[C' forward-char
bindkey '\e[D' backward-char
###################################################


export EDITOR=vim

# For fingerprint
#xhost + >/dev/null

[[ -e $HOME/.profile ]] && source $HOME/.profile

[[ -x /usr/bin/hub ]] && alias git='hub'
alias gitl='git log --pretty=format:"%h (%cn) %s" --graph'
alias mosh='mosh -p 2222'
alias tigall='tig --all'
alias diff='diff --color=auto -u'
alias ip='ip --color'
alias ipb='ip --color --brief'

export PYTHONDONTWRITEBYTECODE=1

export PATH=$PATH:$HOME/bin:$HOME/Coding/django-developer-tools:$HOME/Coding/django-developer-tools/git

[[ -x /usr/bin/direnv ]] && eval "$(direnv hook zsh)"

function lpclone() {
    LATERPAY_EMAIL=mholtermann@laterpay.net
    git clone git@github.com:laterpay/$1
    (cd $1 && git config --add user.email $LATERPAY_EMAIL)
}
