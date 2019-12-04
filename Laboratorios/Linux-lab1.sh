#!/bin/bash

echo -e "\033[40m\033[31mLABORATORIO 1 - COMANDOS BASICOS PARA NAVEGAR EN CARPETAS\033[0m"

echo -e "\033[40m\033[1;34mIngresar el comando segun la instrucción\033[0m"

clear

AC="Vuelve a intentarlo"

while true
do
	echo "1.Verificar directorio actual"
	read respuesta
	if [ $respuesta = "pwd" ]
	then
		pwd;
		break;
	else
		echo $AC
	fi
done
while true	
do
	echo "2.Crear la carpeta dir1"
	read respuesta
	if [[ $respuesta =  "mkdir -v dir1" ]];
	then
		mkdir -v dir1;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "3.Crear las carpetas dir2, dir3 y dir4"
	read respuesta
	if [[ $respuesta = "mkdir -vp dir2/dir3/dir4" ]];
	then
		mkdir -vp dir2/dir3/dir4;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "4.Listar el directorio"
	read respuesta
	if [ $respuesta = "ls" ]
	then
		ls;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "5.Listar de forma recursiva"
	read respuesta
	if [[ $respuesta = "ls -R" ]];
	then
		ls -R;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "6.Cambiarse a la carpeta dir2"
	read respuesta
	if [[ $respuesta = "cd dir2" ]];
	then
		cd dir2/;
		pwd;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "7.Regresar a la carpeta anterior"
	read respuesta
	if [[ $respuesta = "cd -" ]];
	then
		cd -;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "8.Ir a home del usuario"
	read respuesta
	if [ $respuesta = "cd" ]
	then
		cd;
		pwd;
		break;
	else
		echo $AC
	fi
done
