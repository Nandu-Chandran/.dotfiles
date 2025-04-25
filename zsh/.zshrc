#Prereq 
# https://github.com/zsh-users/zsh-syntax-highlighting
# ohmyposh
# zoxide

autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[red]%}%n%{$fg[red]%}@%{$fg[red]%}%M %{$fg[red]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

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

export PATH=$PATH:$HOME/.local/bin
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
figlet 'Optiplex' && fortune | cowsay && neofetch --ascii_distro ubuntu_small --cpu_temp C

eval "$(oh-my-posh init zsh --config $HOME/.dotfiles/ohmyposh/zen.toml)"
eval "$(zoxide init --cmd cd zsh)"
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
