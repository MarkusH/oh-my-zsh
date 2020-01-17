PROMPT='⌚%{$fg_bold[white]%}%D{%T} 📍%{$fg_bold[magenta]%}%d%{$fg_bold[white]%}$(kube_ps1)$(git_prompt_info)
%{$fg_bold[green]%}%n@%m$ %{$reset_color%}'

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✅"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[red]%}❌%{$reset_color%}"

# kube-ps1 theming
KUBE_PS1_SYMBOL_USE_IMG=true
KUBE_PS1_NS_ENABLE=false
KUBE_PS1_DIVIDER=""
KUBE_PS1_PREFIX=" "
KUBE_PS1_SUFFIX=""
