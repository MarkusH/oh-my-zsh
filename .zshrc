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
[[ -e /usr/bin/virtualenvwrapper.sh ]] && source /usr/bin/virtualenvwrapper.sh

# Node
[[ -e /usr/share/nvm/init-nvm.sh ]] && source /usr/share/nvm/init-nvm.sh

# Docker
export BUILDKIT_PROGRESS=plain
export DOCKER_BUILDKIT=1

# kubectl
export KUBECONFIG=$HOME/.kube/config

export PATH=$PATH:$HOME/.local/bin:$HOME/bin

# Python
export PIP_REQUIRE_VIRTUALENV=true
export PYTHONBREAKPOINT=ipdb.set_trace
export PYTHONDONTWRITEBYTECODE=1

# Rust
export RUST_BACKTRACE=1

#export CASE_SENSITIVE=true
#export DISABLE_COLOR=true

# plugins=(archlinux django git github history-substring-search kube-ps1 kubectl pip python screen systemd ssh-agent)
plugins=(archlinux django git github history-substring-search kube-ps1 kubectl pip python screen systemd)
# zstyle :omz:plugins:ssh-agent quiet yes
source $ZSH/oh-my-zsh.sh
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# if [[ -S /run/user/1000/ssh-agent.socket ]]; then
#     echo true
# else
#     echo false
# fi
# 
# if [[ -x /home/markus/bin/ssh-add.sh ]]; then
#         /home/markus/bin/ssh-add.sh > /dev/null 2>&1
# fi

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

export EDITOR=nvim

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
alias baty='bat -l yaml'
alias kubectl='DEBUG= kubectl'

[[ -x /usr/bin/direnv ]] && eval "$(direnv hook zsh)"

# eval "$(glab completion --shell zsh)"

eval "$(starship init zsh)"
