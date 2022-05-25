#list
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#nav
alias .="cd"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

alias .1="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."

#pwr
alias sdn='sudo shutdown now'
alias srn='sudo reboot now'

#git
alias gs="git status"
alias gal="git add ."
alias gall="git add ."
alias gca="git commit -a"
alias gc="git commit -m"
alias go="git push -u origin"

#history
alias h="history"
alias hs='history'
alias h1="history 10"
alias h2="history 20"
alias h3="history 30"
alias hgrep='history | grep'

#copy move
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias rm='rm -I --preserve-root'

#mount ssd
alias mnt='udisksctl mount -b /dev/nvme0n1p3 && cd /media/nc/Windows-SSD/Users/nandu'
alias umnt='cd && udisksctl unmount -b /dev/nvme0n1p3'

#apps
alias vi='vim'
alias r='ranger'
alias fopen="thunar . 2>&1"
alias ydl-audio='youtube-dl -f "bestaudio/best" -ciw -o "%(title)s.%(ext)s" -v --extract-audio --audio-quality 0 --audio-format mp3'

#folder shortcuts
alias desk="cd ~/Desktop"
alias down="cd ~/Downloads"
alias musi='cd ~/music'
alias ssd='cd /media/nc/Windows-SSD/Users/nandu'
alias ssdp='cd /media/nc/Windows-SSD/Users/nandu/Pictures'
alias ssdv='cd /media/nc/Windows-SSD/Users/nandu/Videos'
alias yt='cd ~/vids/yt'

#usr
alias rH='source Hera/bin/activate && cd pjt/Hera && python hera.py'
alias de='deactivate'
alias pg="ping gnu.org -c 5"
