#!/bin/bash

EDITOR=vim
PASSWD=/etc/passwd
RED=`\033[0;41;30m`
STD=`\033[0;0;39m`

pause(){
	read -p "Presiona [Enter] para continuar..." fackEnterKey
}

# Linux-lab1
Laboratorio1(){
	/home/Eduardo/scriptslabs/Linux-lab1.sh
}

#Linux-lab2
Laboratorio2(){
	/home/Eduardo/scriptslabs/Linux-lab2.sh
}

#Linux-lab3
Laboratorio3(){
	/home/Eduardo/scriptslabs/Linux-lab3.sh
}

#Linux-lab4
Laboratorio4(){
	/home/Eduardo/scriptslabs/Linux-lab4.sh
}

#Linux-lab5
Laboratorio5(){
	/home/Eduardo/scriptslabs/Linux-lab5.sh
}

show_menus(){
	clear
	echo -e "\033[40m\033[;1;36m██╗      █████╗ ██████╗  ██████╗ ██████╗  █████╗ ████████╗ ██████╗ ██████╗ ██╗ ██████╗ ███████╗\033[0m"
	echo -e "\033[40m\033[;36m██║     ██╔══██╗██╔══██╗██╔═══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔═══██╗██╔══██╗██║██╔═══██╗██╔════╝\033[0m"
	echo -e "\033[40m\033[;1;34m██║     ███████║██████╔╝██║   ██║██████╔╝███████║   ██║   ██║   ██║██████╔╝██║██║   ██║███████╗\033[0m"
	echo -e "\033[40m\033[;34m██║     ██╔══██║██╔══██╗██║   ██║██╔══██╗██╔══██║   ██║   ██║   ██║██╔══██╗██║██║   ██║╚════██║\033[0m"
	echo -e "\033[40m\033[;35m███████╗██║  ██║██████╔╝╚██████╔╝██║  ██║██║  ██║   ██║   ╚██████╔╝██║  ██║██║╚██████╔╝███████║\033[0m"
	echo -e "\033[40m\033[;32m╚══════╝╚═╝  ╚═╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝ ╚═════╝ ╚══════╝\033[0m"
	echo -e "\033[40m\033[;35mI. Labortario1\033[0m"
	echo -e "\033[40m\033[;37mII. Laboratorio2\033[0m"
	echo -e "\033[40m\033[;36mIII. Laboratorio3\033[0m"
	echo -e "\033[40m\033[;1;33mIV. Laboratorio4\033[0m"
	echo -e "\033[40m\033[;31mV. Laboratorio5\033[0m"
	echo -e "\033[40m\033[;1;31mVI. Salir\033[0m"
}


read_options(){
	local choice
	read -p "Eliga una opción del [ I - VI ] " choice
	case $choice in 
		1) Laboratorio1 ;;
		2) Laboratorio2 ;;
		3) Laboratorio3 ;;
		4) Laboratorio4 ;;
		5) Laboratorio5 ;;
		6) exit 0;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}

trap '' SIGQUIT SIGTSTP

while true
do
	show_menus
	read_options
done
