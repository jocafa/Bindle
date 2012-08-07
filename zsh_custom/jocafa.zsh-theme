# 
local return_code="%(?..%F{88}⮂%F{255}%K{88} %? %{$reset_color%})"

ZSH_THEME_GIT_PROMPT_PREFIX="%F{255}⭠ %F{249}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{220}⚡"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""

PROMPT='%F{255}%K{33} %n@%m %F{33}%K{240}⮀ %F{255}%~ %F{240}%K{236}⮀ $(git_prompt_info) %F{236}%k⮀%{$reset_color%} '
RPS1='${return_code}'
