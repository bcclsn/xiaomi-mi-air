alias shutdown='sudo shutdown -h now'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias less='less --quiet'
alias h='cd ~'
alias x='startx'
alias grep='grep --color=auto'
alias dmesg='dmesg -H'
alias qq='exit'
alias df='df -h'
alias su='su -l'
alias kill='tmux kill-session -t'
alias cleansys='sudo pacman -Rscn $(pacman -Qdtq)'
alias pacup='sudo mount -t btrfs -o compress=lzo,subvol=/ /dev/sda2 /mnt/btrfs && sudo btrfs subvolume snapshot / /mnt/btrfs/snap-root/root-pacup--$(date +%b.%d.%y--%H:%M) && sudo umount /mnt/btrfs && sudo pacman -Syu && /usr/bin/bash /home/bcclsn/.script/aur_update.sh'
