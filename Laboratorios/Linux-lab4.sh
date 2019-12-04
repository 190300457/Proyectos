#!/bin/bash

echo -e "\033[40m\033[31mLABORATORIO 4 - COMANDOS BASICOS PARA ADMINISTRAR PROCESOS\033[0m"

echo -e "\033[40m\033[36mIngresar el comando segun la intruccion\033[0m"

clear

AC="Vuelve a intentarlo"

while true
do
	echo "1.Ejecuta el comando ps y analiza su salida"
	read respuesta
	if [ $respuesta = "ps" ]
	then
		ps;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "2.Crea un nuevo proceso"
	read respuesta
	if [[ $respuesta = "sleep 60 &" ]];
	then
		sleep 30&
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "3.Ejecuta ps y analiza su salida"
	read respuesta
	if [ $respuesta = "ps" ]
	then
		ps;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "4.Mata el proceso creado en el paso 2"
	echo -e "\033[40m\033[;36m#Verifica si el proceso sigue vivo\033[0m"
	read respuesta
	if [[ $respuesta = "kill" ]];
	then
	echo -e "\033[40m\033[;36mIntroduce el ID del proceso\033[0m"
	read ID	
		kill $ID;
		ps;
		break;
	else
		echo $AC
	fi
done
while true
do 
	echo "5.Obliga al proceso a morir enviando la señal -9"
	echo -e "\033[40m\033[;36m#Verifica si el proceso sigue vivo\033[0m"
	read respuesta
	if [[ $respuesta = "kill -p" ]];
	then
	echo -e "\033[40m\033[;36mIntroduce el ID del proceso\033[0m"
	read ID		
		kill -9 $ID;
		ps;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "6.Inicia dos procesos mas"
	 echo -e "\033[40m\033[;36m#Verifica con ps si los procesos estan ejecutandose\033[0m"
	read respuesta
	if [[ $respuesta = "sleep 30 &" ]];
	then
		sleep 30&
		sleep 30&
		ps;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "7. Mata los procesos asociados al comando sleep"
	read respuesta
	if [[ $respuesta = "killall sleep" ]];
	then
		ps;
	echo -e "\033[40m\033[;36mIntroduce el ID del proceso\033[0m"
	read ID
		kill $ID;
	echo -e "\033[40m\033[;36mIntroduce el ID del proceso\033[0m"
	read id	
		kill $id;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "8.Mata a todos los procesos asociados al usuario actual"
	read respuesta
	if [[ $respuesta = "killall -u user" ]];
	then
		kill -u Eduardo;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "9.Mata todos los procesos asociados al comando find ejecutados por el usuario"
	read respuesta
	if [[ $respuesta = "killall -w find" ]];	
	then
		killall -w find;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "10.Obten el PID del proceso bash"
	echo -e "\033[40m\033[;36m#Utiliza el comando nice para cambiar la prioridad de un proceso\033[0m"
	read respuesta
	if [[ $respuesta = "pidof bash" ]];
	then
		pidof -s bash;
		nice -n 19 sleep 30 &
		renice -n 19 2322
		renice +1 -u Eduardo
		break;
	fi
done
while true
do
	echo "11.Utiliza el comando top para visualizar los procesos"
	read respuesta
	if [ $respuesta = "top" ]
	then
		top;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "12.Utiliza el comando pstree y analiza su salida"
	read respuesta
	if [ $respuesta = "pstree" ]
	then
		pstree -p;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "13.Verifica el tiempo que tarda en ejecutarse un comando"
	read respuesta
	if [[ $respuesta = "time ls -1" ]];
	then
		time ls -1;
		break;
	else
		echo $AC
	fi
done
