#!/bin/bash

re="g"
clear;
while [ $re = "g" ]
do
	x=$((RANDOM%6))
	y=$((RANDOM%6))
	x=`expr $x + 1`
	y=`expr $y + 1`
		echo -e "\033[40m\033[;36mINTRODUCE EL COMANDO CORRECTO SEGUN LA PREGUNTA\033[0m\n"
		echo -e "\033[40m\033[;1;33mDADO 1:\033[0m $x\n"
		echo -e "\033[40m\033[;1;33mDADO 2: \033[0m $y\n"
	suma=`expr $x + $y`
		echo -e "\033[40m\033[;1;33mSUMA =\033[0m $suma\n" 
		case $suma in

			2)
				echo -e "\033[40m\033[;1;37mTema: Archivos\033[0m\n"
				echo -e "\033[40m\033[;35mPregunta 1 ¿Que comando crea archivos?\033[0m\n"
				read respuesta
				if [ $respuesta = "touch" ]
					then
					echo -e "\033[40m\033[32mCORRECTO!\033[0m\n"
					echo -e "\033[40m\033[;35mPregunta 2 ¿Con que se lee el contenido de un archivo?\033[0m\n"
					read respuesta
					if [ $respuesta = "cat" ]
						then
						echo -e "\033[40m\033[32mCORRECTO!\033[0m\n"
						echo -e "\033[40m\033[;35mPregunta 3 ¿Como se copia el contenido de un archivo?\033[0m\n"
						read respuesta
						if [ $respuesta = "cp" ]
							then
							echo -e "\033[40m\033[32mCORRECTO!\033[0m\n"
							echo -e "\033[42m\033[;35mPregunta 4 ¿Como se borra un archivo?\033[0m\n"
							read respuesta
							if [ $respuesta = "rm" ]
								then
								echo -e "\033[40m\033[32mCORRECTO! Has ganado\033[0m\n"
							else [ $respuesta != "rm" ];
							echo -e "\033[40m\033[;31mHas perdido\033[0m"
							fi
						else [ $respuesta != "cp" ];
						echo -e "\033[40m\033[;31mHas perdido\033[0m"
						fi
					else [ $respuesta != "cat" ];
					echo -e "\033[40m\033[;31mHaz perdido\033[0m"
					fi
				else [ $respuesta != "touch" ]; 
				echo -e "\033[40m\033[;31mHaz perdido\033[0m\n"
				fi
				;;	
			
			3)
				echo -e "\033[40m\033[;1;37mTema: Procesos \n"
				echo -e "\033[40m\033[;35mPregunta 1 ¿Que comando vizualisa procesos?\033[0m\n"
				read respuesta
				if [ $respuesta = "ps" ]
					then
					echo -e "\033[40m\033[32mCORRECTO!\033[0m\n"
					echo -e "\033[40m\033[;35mPregunta 2 ¿Como matamos un proceso?\033[0m\n"
					read respuesta
					if [ $respuesta = "kill" ]
						then
						echo -e "\033[40m\033[32mCORRECTO!\033[0m\n"
						echo -e "\033[40m\033[;35mPregunta 3 ¿Como matar varios procesos?\033[0m\n"
						read respuesta
						if [ $respuesta = "killall" ]
							then
							echo -e "\033[40m\044[32mCORRECTO!\033[0m\n"
							echo -e "\033[40m\044[;35mPregunta 4 ¿Como cambiar la prioridad de un proceso?\033[0m\n"
							read respuesta
							if [ $respuesta = "nice" ]
								then
								echo -e "\033[40m\033[32mCORRECTO! Has ganado\033[0m\n"
							else [ $respuesta != "nice" ];
							echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
							fi
						else [ $respuesta != "killall" ];
						echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
						fi
					else [ $respuesta != "kill" ];
					echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
					fi
				else [ $respuesta != "ps" ]
				echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
				fi
				;;
				
			4)
				echo -e "\033[40m\033[;1;37mTEMA: Terminal\033[0m\n"
				echo -e "\033[40m\033[;35m1. ¿Que comando limpia la terminal?\033[0m\n"
				read respuesta
				if [ $respuesta = "clear" ]
					then
					echo -e "\033[40m\033[32mCORRECTO!\033[0m\n"
					echo -e "\033[40m\033[;35m2. ¿Con que comando visualizamos la fecha?\033[0m\n"
					read respuesta
					if [ $respuesta = "date" ]
						then
						echo -e "\033[40m\033[32mCORRECTO!\033[0m\n"
						echo -e "\033[40m\033[;35m3. Este comando nos muestra el historial de la terminal\033[0m\n"
						read respuesta 
						if [ $respuesta = "history" ]
							then
							echo -e "\033[40m\033[32mCORRECTO!\033[0m\n"
							echo -e "\033[40m\033[;35m4. Este comando nos imprime un directorio en forma de arbol\033[0m\n"
							read respuesta
							if [ $respuesta = "tree" ]
								then
								echo -e "\033[40m\033[32mCORRECTO! Has ganado\033[0m\n"
							else [ $respuesta != "tree" ];
							echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
							fi
						else [ $respuesta != "history" ];
						echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
						fi
					else [ $respuesta != "date" ];
					echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
					fi	
				else [ $respuesta != "clear" ];
				echo -e "\033[40m\033[;31mHaz perdido\033[0m\n"
				fi
				;;
			5)
		 		echo -e "\033[40m\033[;1;37mTEMA: Usuarios\033[0m\n"
				echo -e "\033[40m\033[;35m1. ¿Que comando crea cuentas de usurios?\033[0m\n"
				read respuesta
				if [ $respuesta = "adduser" ]
					then
					echo -e "\033[40m\033[32mCORRECTO!\033[0m"
					echo -e "\033[40m\033[;35m2. ¿Que comando crea grupos para usuarios?\033[0m\n"
					read respuesta
					if [ $respuesta = "addgroup" ]
						then
						echo -e "\033[40m\033[32mCORRECTO!\033[0m\n"
						echo -e "\033[40m\033[;35m3. ¿Que comando da permisos de super usuarios?\033[0m\n"
						read respuesta
						if [[ $respuesta = "sudo su" ]]
							then
							echo -e "\033[40m\033[32mCORRECTO!\033[0m\n"
							echo -e "\033[40m\033[;35m4.¿Que comando modifica a un usuario?\033[0m\n"
							read respuesta
							if [ $respuesta = "usermod" ]
								then
								echo -e "\033[40m\033[32mCORRECTO! Has ganado\033[0m\n"
							else [ $respuesta != "usermod" ];
							echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
							fi
						else [[ $respuesta != "sudo su" ]];
						echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
						fi
					else [ $respuesta != "addgroup" ];
					echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
					fi
				else [ $respuesta != "adduser" ];
				echo -e "\033[40m\033[;31Has perdido\033[0m\n"
				fi
				;;	
			6)
				echo -e "\033[40m\033[;1;37mTEMA: Historia de linux\033[0m\n"
				echo -e "\033[40m\033[;35m1. ¿En que año se creo UNIX?\033[0m\n"
				read respuesta
				if [ $respuesta = "1969" ]
					then
					echo -e "\033[40m\033[32mCORRECTO!\033[0m\n"
					echo -e "\033[40m\033[;35m2. ¿Quien creo UNIX?\033[0m\n"
					read respuesta
					if [[ "$respuesta" = "ken thompson" ]]; 
						then
						echo -e "\033[40m\033[32mCORRECTO!\033[0m\n"
						echo -e "\033[40m\033[;35m3. ¿En que año se creo linux?\033[0m\n"
						read respuesta
						if [ $respuesta = "1991" ]
							then
							echo -e "\033[40m\033[32mCORRECTO!\033[0m\n"
							echo -e "\033[40m\033[;35m4. ¿Que significa POSIX?\033[0m\n"
							if [[ $respuesta = "Portable Operating System Interface" ]];
								then
								echo -e "\033[40m\033[32mCORRECTO! Has ganado\033[0m\n"
							else [[ $respuesta != "Portable Operating System Interface" ]];
							echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
							fi
						else [ $respuesta != "1991" ];
						echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
						fi
					else [[ $respuesta != "Ken Thompson" ]];
					echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
					fi
				else [ $respuesta != "1969" ];
				echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
				fi
				;;	
			7)	
				echo -e "\033[40m\033[;1;37mTEMA: Obtener ayuda en la terminal\033[0m\n"
				echo -e "\033[40m\033[;35m1. ¿Que comando muestra las funciones de un comando?\033[0m\n"
				read respuesta
				if [ $respuesta = "help" ]
					then
					echo -e "\033[40m\033[32mCORRECTO!\033[0m"
					echo -e "\033[40m\033[;35m2. ¿Como accedemos a la guia?\033[0m\n"
					read respuesta
					if [ $respuesta = "man" ]
						then
						echo -e "\033[40m\033[32mCORRECTO!\033[0m"
						echo -e "\033[40m\033[;35m3. ¿Que otro comando podemos usar para obtener ayuda?\033[0m\n"
						read respuesta
						if [ $respuesta = "info" ]
							then
							echo -e "\033[40m\033[32mCORRECTO! Has ganado\033[0m\n"
						else [ $respuesta != "info" ];
						echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
						fi
					else [ $respuesta != "man" ];
					echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
					fi
				else [ $respuesta != "help" ];
				echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
				fi
				;;
			8)	
				echo -e "\033[40m\033[;1;37mTEMA: Instalacion y actualizacion de programas\033[0m"
				echo -e "\033[40m\033[;35m1. ¿Como se instala una aplicacion en CentOS?\033[0m\n"
				read respuesta
				if [ $respuesta = "yum-install" ]
					then
					echo -e "\033[40m\033[32mCORRECTO!\033[0m\n"
					echo -e "\033[40m\033[;35m2. ¿Como se actualiza CentOS?\033[0m\n"
					read respuesta	
					if [ $respuesta = "yum-update" ]
						then
						echo -e "\033[40m\033[32mCORRECTO! Has ganado\033[0m\n"
					else [ $respuesta != "yum-update" ];
					echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
					fi  
				else [ $respuesta != "yum-install" ];
				echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
				fi
				;;
			9)	
				echo -e "\033[40m\033[;1;37mTEMA: Sistema de archivos y administracion de discos\033[0m\n"
				echo -e "\033[40m\033[;35m1. ¿Como vemos la capacidad del disco?\033[0m\n"
				read respuesta
				if [ $respuesta = "df" ]
					then
					echo -e "\033[40m\033[32mCORRECTO!\033[0m\n"
					echo -e "\033[40m\033[;35m2. ¿Como vemos el contenido de directorios?\033[0m\n"
					read respuesta
					if [ $respuesta = "du" ]
						then
						echo -e "\033[40m\033[32mCORRECTO!\033[0m\n"
						echo -e "\033[40m\033[;35m3. ¿Como creamos un disco virtual?\033[0m\n"
						read respuesta
						if [ $respuesta = "dd" ]
							then
							echo -e "\033[40m\033[32mCORRECTO! Has ganado\033[0m\n"
						else [ $respuesta != "dd" ];
						echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
						fi
					else [ $respuesta != "du" ];
					echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
					fi
				else [ $respuesta != "df" ];
				echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
				fi
				;;
			10)
				echo -e "\033[40m\033[;1;37mTEMA: Procesamiento de texto\033[0m\n"
				echo -e "\033[40m\033[;35m1. ¿El comando tr sirve para borrar piezas de texto o para reescribirlo?\033[0m\n"
				echo -e "Si o No"
				read respuesta
				if [ $respuesta = "si" ]
					then
					echo -e "\033[40m\033[32mCORRECTO!\033[0m\n"
					echo -e "\033[40m\033[;35m2. Verdadero o falso que el comando paste sirve para alinear archivos lado a lado, fusionando archivos, respectivamente\033[0m\n"
					if [ $respuesta = "verdadero" ]
						then
						echo -e "CORRECTO!\n"
						echo -e "\033[40m\033[;35m3. Verdadero o falso que el comando join permite juntar la informacion de dos archivos que contienen un campo de informacion en comun\033[0m\n"
						if [ $respuesta = "verdadero" ]
							then
							echo -e "\033[40m\033[32mCORRECTO! Has ganado\033[0m\n"
						else [ $respuesta != "verdadero" ];
						echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
						fi
					else [ $respuesta != "verdadero" ];
					echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
					fi
				else [ $respuesta != "si"];
				echo -e "\033[40m\033[;31mHaz perdido\033[0m\n"
				fi
				;;
			11)	
				echo -e "\033[40m\033[;1;37mTEMA: Grep\033[0m\n"
				echo -e "\033[40m\033[;35m1. ¿Como encontrar una palabra sin tener en cuenta mayusculas?\033[0m\n"
				read respuesta
				if [[ $respuesta = "grep -i" ]];
					then
					echo -e "\033[40m\033[32mCORRECTO!\033[0m\n"
					echo -e "\033[40m\033[;35m2. ¿Como contar las palabras que buscas?\033[0m\n"
					if [[ $respuesta = "grep -c" ]];
						then
						echo -e "\033[40m\033[32mCORRECTO!\033[0m\n"
						echo -e "\033[40m\033[;35m3. ¿Como buscar en varios archivos una palabra?\033[0m\n"
						read respuesta
						if [[ $respuesta = "grep -l" ]];
							then
							echo -e "\033[40m\033[32mCORRECTO! Haz ganado\033[0m\n"
						else [[ $respuesta != "grep -l" ]];
						echo -e "\033[40m\033[;31mHas perdido\033[0m\n"
						fi
					else [[ $respuesta != "grep -c" ]];
					echo -e "\033[40m\033[;31mHaz perdido\033[0m\n"
					fi
				else [[ $respuesta != "grep -i" ]];
				echo -e "\033[40m\033[;31mHaz perdido\033[0m\n"
				fi
				;;
			12)	
				echo -e "\033[40m\033[;1;37mTEMA: AWK\033[0m\n"
				echo -e "\033[40m\033[;35m1. ¿Usamos awk -F para especificar un separador de archivos?\033[0m\n"
				echo -e "Verdadero o falso\n"
				read respuesta
				if [ $respuesta = "verdadero" ]
					then
					echo -e "\033[40m\033[32mCORRECTO!\033[0m\n"
					echo -e "\033[40m\033[;35m2. ¿Usamos awk -f para especificar un archivo que contenga un script awk?\033[0m\n"
					echo -e "Verdadero o falso\n"
					read respuesta
					if [ $respuesta = "verdadero" ]
						then
						echo -e "\033[40m\033[32mCORRECTO!\033[0m\n"
						echo -e "\033[40m\033[;35m3. ¿Usamos awk -v para declarar una variable?\033[0m\n"
						echo -e "Verdadero o falso\n"
						read respuesta
						if [ $respuesta = "verdadero" ]
							then
							echo -e "\033[40m\033[32mCORRECTO! Haz ganado\033[0m\n"
						else [ $respuesta != "verdadero" ];
						echo -e "\033[40m\033[;35mHaz perdido\033[0m\n"
						fi
					else [ $respuesta != "verdadero" ];
					echo -e "\033[40m\033[;31mHaz perdido\033[0m\n"
					fi
				else [ $respuesta != "verdadero" ];
				echo -e "\033[40m\033[;31mHaz perdido\033[0m\n"
				fi
				;;
		esac
	echo -e "\033[40m\033[;36mPARA SEGUIR JUGANDO PRESIONA g PARA SALIR PRESIONE CUALQUIER TECLA\033[0m\n"
read re
clear;
done
