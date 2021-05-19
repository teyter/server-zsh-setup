# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[red]%}@%{$fg[green]%}%M %{$fg[cyan]%}%1~%{$fg[red]%}]%{$reset_color%}$%b "
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

source ~/.zsh/vi-mode/vi-mode.plugin.zsh
alias ls='ls --color=auto'
