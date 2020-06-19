alias off='sudo shutdown -h now'
alias ls='ls --classify --color=auto --human-readable'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias less='less --quiet'
alias h='cd ~'
alias grep='grep --color=auto'
alias dmesg='dmesg -H'
alias qq='exit'
alias df='df --human-readable'
alias su='su -l'
alias paclog='tail -n 40 /var/log/pacman.log'
alias kill='tmux kill-session -t'
alias x='startx'
alias c='clear'
alias cleansys='sudo pacman -Rsn $(pacman -Qdtq)'
alias paccache='paccache -rvk1'
alias pacup='sudo sh /home/bcclsn/.script/btrfs_snap.sh && yay -Syu'
alias snapshot='sudo sh /home/bcclsn/.script/btrfs_snap.sh'
alias mat='xhost + && sudo sh /usr/src/MATLAB/R2019b/bin/activate_matlab.sh && exit'
alias routing='java -jar /usr/src/freeRouting_20190401.jar'
alias backup='sh .script/backup_mega.sh -b'
