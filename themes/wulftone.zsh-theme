# wulftone.zsh-theme

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# color vars
eval my_gray='$FG[237]'
eval my_orange='$FG[214]'
eval darkish_blue='$FG[032]'
eval lavender='$FG[105]'
eval light_blue='$FG[075]'

# right prompt
if type "virtualenv_prompt_info" > /dev/null
then
	ENVPROMPT='$(virtualenv_prompt_info)$my_gray%n@%m%{$reset_color%}%'
else
	ENVPROMPT='$my_gray%n@%m%{$reset_color%}%'
fi

## primary prompt
PROMPT='$my_gray%D %* %n@%m%{$reset_color%}
$darkish_blue${PWD/#$HOME/~}/ \
$(git_prompt_info)\
$lavender%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

 git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$light_blue(branch:"
ZSH_THEME_GIT_PROMPT_SUFFIX="$light_blue)%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_ADDED="$my_orange✚%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="$my_orange↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND="$my_orange↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DELETED="$my_orange✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED="$my_orange↕%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="$my_orange✹%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="$my_orange➜%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_STASHED="$my_orange!%{$reset_color%}︎"
ZSH_THEME_GIT_PROMPT_UNMERGED="$my_orange═%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED=""
