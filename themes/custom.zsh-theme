
PROMPT='$fg_bold[white][%*] [$fg[blue]%d$fg[white]]$(git_prompt_info)
$fg[green]%n@%m$ $reset_color'
# git theming
ZSH_THEME_GIT_PROMPT_PREFIX=" [$fg_bold[yellow]"
ZSH_THEME_GIT_PROMPT_SUFFIX="$fg[white]]"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"
ZSH_THEME_GIT_PROMPT_DIRTY=" $fg_bold[red]✗$reset_color"
