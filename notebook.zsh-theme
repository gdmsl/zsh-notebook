# ZSH THEME - Notebook

local user_host='%{$terminfo[bold]$fg[green]%}%n%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[magenta]%}%~%{$reset_color%}'
local hostname='%{$terminfo[bold]$fg[white]%}%m%{$reset_color%}'
local point='%{$terminfo[bold]%}%{$fg[red]%}>>%{$reset_color%}'

function prompt_char {
  if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

PROMPT="╭─[ ${current_dir} ] $(prompt_char)
╰─${user_host}@${hostname} ${point} "

RPS1="${return_code}"

