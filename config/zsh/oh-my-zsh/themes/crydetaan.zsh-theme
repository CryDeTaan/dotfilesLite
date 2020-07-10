# Based on af-magic.zsh-theme

if [ $UID -eq 0 ]; then NCOLOR="$FG[196]"; else NCOLOR="$FG[046]"; fi
local return_code="%(?..%{$reset_color%}%{$fg[red]%}%? ↵%{$reset_color%})"

# primary prompt
PROMPT='$FG[237]------------------------------------------------------------%{$reset_color%}
$FG[075]%~\
$(git_prompt_info) \
$NCOLOR%(!.#.»)%{$reset_color%} '

PROMPT2='%{$FG[130]%}> %{$reset_color%}'

# color vars
eval my_gray='$FG[237]'
eval my_orange='$FG[214]'

# right prompt
if type "virtualenv_prompt_info" > /dev/null
then
        RPROMPT='$my_gray$(virtualenv_prompt_info) %n@%m%{$reset_color%}%'
else
#        RPROMPT='$my_gray%n@%m%{$reset_color%}%'
fi

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075]($FG[078]"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"
