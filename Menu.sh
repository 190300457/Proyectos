#!/bin/bash

EDITOR=vim
PASSWD=/etc/passwd
RED='\033[0;41;30m'
STD='\033[0;0;39m'
 
# User defined function

pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}

# hola mundo
holaMundo(){
	/bin/bash/ /home/Eduardo/Scripts/Holamundo.sh
	pause
}

# hola mundo variable
holaMundovariable(){
	/bin/bash/ /home/Eduardo/Scripts/HolamundoVarible.sh
	pause
}

# Variables
Variables(){
	/bin/bash/ /home/Eduardo/Scripts/Varibles.sh
	pause
}

# Arrays
Arrays(){
	/bin/bash/ /home/Eduardo/Scripts/Arrays.sh
	pause
}

# ArraysUsos
ArraysUsos(){
	/bin/bash/ /home/Eduardo/Scripts/ArraysUsos.sh
	pause
}

# OperacionAritmetica
Operacionaritmetica(){
	/bin/bash/ /home/Eduardo/Scripts/OperacionAritmetica.sh
	pause
}

# OperacionesLogicas
Operacioneslogicas(){
	/bin/bash/ /home/Eduardo/Scripts/OperacionesLogicas.sh
	pause
}

# Condicionales
condicionales(){
	/bin/bash/ /home/Eduardo/Scripts/Condicionales.sh
	pause
}

# Comprobaciones
comprobaciones(){
	/bin/bash/ /home/Eduardo/Scripts/Comprobaciones.sh
	pause
}

# Case
Case10(){
	/bin/bash/ /home/Eduardo/Scripts/Case.sh
	pause
}

# Iteraciones
iteraciones(){
	/bin/bash/ /home/Eduardo/Scripts/Iteraciones.sh
	pause
}

# While
While12(){
	/bin/bash/ /home/Eduardo/Scripts/While.sh
	pause
}

# Until
Until13(){
	/bin/bash/ /home/Eduardo/Scripts/Until.sh
	pause
}

# Select
select14(){
	/bin/bash/ /home/Eduardo/Scripts/Select.sh
	pause
}

# Funciones
funciones(){
	/bin/bash/ /home/Eduardo/Scripts/Funciones.sh
	pause
}

# Librerias
librerias(){
	/bin/bash/ /home/Eduardo/Scripts/Librerias.sh
	pause
}

# Señales
Senales(){
	/bin/bash/ /home/Eduardo/Scripts/Señales.sh
	pause
}

# Colores
colores(){
	/bin/bash/ /home/Eduardo/Scripts/Colores.sh
	pause
}

# function to display menus
show_menus() {
	clear
	echo -e "\033[40m\033[;32m███╗   ███╗███████╗███╗   ██╗██╗   ██╗    ██████╗ ███████╗    ███████╗ ██████╗██████╗ ██╗██████╗ ████████╗███████╗\033[0m"
	echo -e "\033[40m\033[;1;32m████╗ ████║██╔════╝████╗  ██║██║   ██║    ██╔══██╗██╔════╝    ██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝\033[0m"
	echo -e "\033[40m\033[;36m██╔████╔██║█████╗  ██╔██╗ ██║██║   ██║    ██║  ██║█████╗      ███████╗██║     ██████╔╝██║██████╔╝   ██║   ███████╗\033[0m"
	echo -e "\033[40m\033[;1;36m██║╚██╔╝██║██╔══╝  ██║╚██╗██║██║   ██║    ██║  ██║██╔══╝      ╚════██║██║     ██╔══██╗██║██╔═══╝    ██║   ╚════██║\033[0m"
	echo -e "\033[40m\033[;1;34m██║ ╚═╝ ██║███████╗██║ ╚████║╚██████╔╝    ██████╔╝███████╗    ███████║╚██████╗██║  ██║██║██║        ██║   ███████║\033[0m"
	echo -e "\033[40m\033[;35m╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝     ╚═════╝ ╚══════╝    ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝   ╚══════╝\033[0m"
	echo -e "\033[40m\033[;35m1. Hola mundo\033[0m"
	echo -e "\033[40m\033[;32m2. Hola mundo varible\033[0m"
	echo -e "\033[40m\033[;36m3. Variables\033[0m"
	echo -e "\033[40m\033[;1;33m4. Arrays\033[0m"
	echo -e "\033[40m\033[;1;35m5.ArraysUsos\033[0m"
	echo -e "\033[40m\033[;33m6. OperacionAritmetica\033[0m"
	echo -e "\033[40m\033[;1;31m7. Operacioneslogicas\033[0m"
	echo -e "\033[40m\033[;37m8. Condicionales\033[0m"
	echo -e "\033[40m\033[;1;34m9. Comprobaciones\033[0m"
	echo -e "\033[40m\033[;1;30m10. Case\033[0m"
	echo -e "\033[40m\033[;1;36m11. Iteraciones\033[0m"
	echo -e "\033[40m\033[;35m12. While\033[0m"
	echo -e "\033[40m\033[;32m13. Unitl\033[0m"
	echo -e "\033[40m\033[;35m14. Select\033[0m"
	echo -e "\033[40m\033[;1;30m15. Funciones\033[0m"
	echo -e "\033[40m\033[;1;33m16. Librerias\033[0m"
	echo -e "\033[40m\033[;1;36m17. Señales\033[0m"
	echo -e "\033[40m\033[;31m18. Colores\033[0m"
	echo -e "\033[40m\033[;35m19. Exit\033[0m"
}

read_options(){
	local choice
	read -p "Enter choice [ 1 - 19] " choice
	case $choice in
		1) holaMundo ;;
		2) holaMundovariable ;;
		3) Variables ;;
		4) Arrays ;;
		5) ArraysUsos ;;
		6) Operacionaritmetica ;;
		7) Operacioneslogicas ;;
		8) condicionales ;;
		9) comprobaciones ;;
		10) Case10 ;;
		11) iteraciones ;;
		12) While12 ;;
		13) Until13 ;;
		14) select14 ;;
		15) funciones ;;
		16) librerias ;;
		17) Senales ;;
		18) colores ;;
		19) exit 0;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}
 
# ----------------------------------------------
# Trap CTRL+C CTRL+Z and quit singles
# ----------------------------------------------
trap '' SIGINT SIGQUIT SIGTSTP
 
# -----------------------------------
# Min logic - infinite loop
# ------------------------------------
while true
do
 
	show_menus
	read_options
done
