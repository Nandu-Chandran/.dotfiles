#Prereq 
# https://github.com/zsh-users/zsh-syntax-highlighting

autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$HOME/.local/share/zsh_history"

#Source aliases
source "$HOME/.dotfiles/shell/aliasrc"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Emacs binding
bindkey -e


source "/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"