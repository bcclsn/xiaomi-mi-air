#!/bin/bash

# get current mac address and define matlab one #
curr_mac=$(ip link show wlp1s0 | grep "ether" | cut -c 16- | cut -c -17)
matl_mac="C6:8E:6C:46:F3:5A"

# get password
password=$(zenity --password --title "MAC Spoofing" --timeout=10)

# spoofing mac address #
if (echo $password | (sudo -S ip link set dev wlp1s0 down & \
                      sudo -S ip link set dev wlp1s0 address $matl_mac & \
                      sudo -S ip link set dev wlp1s0 up)) ; then

    # start matlab in a tmux session #
    tmux new-session -d -s "matlab" env MATLAB_JAVA=/usr/lib/jvm/java-8-openjdk/jre matlab -desktop
    sleep 30

    # restore previous address and exit #
    sudo -S ip link set dev wlp1s0 down & \
    sudo -S ip link set dev wlp1s0 address $curr_mac & \
    sudo -S ip link set dev wlp1s0 up & \

# get error #
else
    zenity --error --title "Error" \
                   --text  "Password sbagliata!" \
                   --width=150 --height=80
fi

# clear sudo cache and exit #
sudo -k
exit 0

################################################
##                                bcclsn v2.2 ##
################################################
