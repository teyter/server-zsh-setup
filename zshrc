# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[red]%}@%{$fg[green]%}%M %{$fg[cyan]%}%1~%{$fg[red]%}]%{$reset_color%}$%b "
autoload -U compinit
zstyle ':completion:*' menu select
eval "$(dircolors)"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:ls:*' file-patterns '*(/):directories' # ls ignores non-dirs
zstyle ':completion:*:*:vim:*:*files' ignored-patterns '*~*.*' # vim ignores c/cpp object files
zstyle ':completion:*:*:cat:*:*files' ignored-patterns '*~*.*' # cat ignores c/cpp object files
#zstyle ':completion:*:*:vim:*' file-patterns '^*.(aux|log|pdf):source-files' '*:all-files' # vim ignores filetypes
zmodload zsh/complist
compinit

source ~/.zsh/vi-mode/vi-mode.plugin.zsh
alias ls='ls --color=auto'

# up arrow ignores repeats
setopt HIST_IGNORE_DUPS
