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

if [ -x "$(command -v nvim)" ] ; then
    export EDITOR=nvim
else
    export EDITOR=vim
fi

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
alias vim='nvim'

export PYTHONDONTWRITEBYTECODE=1

export PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/Coding/django-developer-tools:$HOME/Coding/django-developer-tools/git
export KUBECONFIG=$HOME/.kube/config_shared:$HOME/.kube/config_user

[[ -x /usr/bin/direnv ]] && eval "$(direnv hook zsh)"

function cr8clone() {
    CRATE_EMAIL=markus@crate.io
    cd "$HOME/Coding/crate"
    git clone git@github.com:crate/$1.git
    (cd $1 && git config --add user.email $CRATE_EMAIL)
}
