#!/bin/bash

HEIGHT=15
WIDTH=90
CHOICE_HEIGHT=13
BACKTITLE="Simple bash script to create user and install C9 IDE Workspace then automatically install some required packages."
TITLE="C9IDECoreDeploy"
MENU="Choose one of the following options:"

OPTIONS=(1 "chmod All Scripts [required to do this once at first installation]"
	 2 "Install Packages [required to do this once at first installation]"
	 3 "Install IonCube for PHP 7.2 [do this only once]"
	 4 "Deploy User Workspace"
         5 "Delete User Workspace"
         6 "See User Workspace Status"
	 7 "See Used Port List"
	 8 "Deploy Docker User Workspace"
	 9 "Deploy Docker User Workspace With Memory Limit"
	 10 "Delete Docker User Workspace"
	 11 "See Docker User Workspace Status"
	 12 "Restart User Workspace"
	 13 "Schedule User Workspace Service Stop & Deletion"
	 14 "See Scheduled User Workspace Service Stop & Deletion")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            chmod +x scripts/c9-maker.sh
            chmod +x scripts/ioncubesc.sh
            chmod +x scripts/c9-deluser.sh
	    chmod +x scripts/c9-maker-docker.sh
	    chmod +x scripts/c9-deluser-docker.sh
	    chmod +x scripts/c9-status.sh
	    chmod +x scripts/c9-restart.sh
	    chmod +x scripts/schedule.sh
	    chmod +x scripts/firstinstall.sh
	    chmod +x scripts/restore.sh
	    chmod +x scripts/c9-maker-dockermemlimit.sh
	    sudo bash run.sh
            ;;
        2)
            sudo bash scripts/firstinstall.sh
            sudo bash run.sh
            ;;
        3)
            sudo bash scripts/ioncubesc.sh
            sudo bash run.sh
            ;;
        4)
            sudo bash scripts/c9-maker.sh
            ;;
        5)
	    sudo bash scripts/c9-deluser.sh
            ;;
        6)
	    sudo bash scripts/c9-status.sh
            ;;
        7)
            sudo lsof -i -P -n | grep LISTEN
            ;;
        8)
            sudo bash scripts/c9-maker-docker.sh
            ;;
	9)
	    sudo bash scripts/c9-maker-dockermemlimit.sh
	    ;;
        10)
            sudo bash scripts/c9-deluser-docker.sh
            ;;
        11)
            docker ps -a
            ;;
	12)
	    sudo bash scripts/c9-restart.sh
	    ;;
	13)
	    sudo bash scripts/schedule.sh
	    ;;
	14)
	    sudo atq
	    ;;
esac
