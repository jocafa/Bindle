PROMPT='%F{239}[%F{244}%n%F{247}@%F{255}%m%F{239}]: %F{221}%~$(git_prompt_info)%F{239}]%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" %F{33}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=") %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{33})"
