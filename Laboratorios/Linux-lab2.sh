#!/bin/bash

echo -e "\033[40m\033[31mLABORATORIO 2 - CREAR ARCHIVOS, DESPLEGAR SU CONTENIDO Y ESTADISTICAS\033[0m"

echo -e "\033[40m\033[32mIngresar el comando segun la instrucción\033[0m"

clear

AC="Vuelve a intentar"

while true
do
	echo "1.Crear el archivo file1.txt"
	read respuesta
	if [[ $respuesta = "touch file1.txt" ]];
	then
		touch file1.txt;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "2.Cambia el timestamp del archivo file1.txt"
	read respuesta
	if [[ $respuesta = "touch file1.txt" ]];
	then
		touch file1.txt;
		break;
	else
		echo $AC 
	fi
done
while true
do
	echo "3.Crear el archivo file2.txt"
	read respuesta
	if [[ $respuesta = "touch file2.txt" ]]; 
	then
		touch file2.txt;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "4.Desplegar contenido del directorio actual"
	read respuesta
	if [ $respuesta = "dir" ]
	then
		dir;
		break;
	else 
		echo $AC
	fi
done
while true
do
	echo "5.Limpiar el contenido de la terminal"
	read respuesta
	if [ $respuesta = "clear" ]
	then
		clear;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "6.Despliega el texto Hello"
	read respuesta
	if [[ $respuesta = "echo hello" ]];
	then
		echo "hello";
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "7.Redirigir la salida del comando anterior hacia un archivo"
	read respuesta
	if [[ $respuesta = "echo hello > hello.txt" ]];
	then
		echo "hello" > hello.txt;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "8.Adjunta el texto Linux al archivo texto"
	read respuesta
	if [[ $respuesta = "echo linux >> hello.txt" ]];
	then
		echo "Linux" >> hello.txt;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "9.Adjunta el texto world al archivo de texto"
	read respuesta
	if [[ $respuesta = "echo world >> hello.txt" ]];
	then
		echo "World" >> hello.txt;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "10.Despliega el contenido del archivo hello.txt"
	read respuesta
	if [[ $respuesta = "cat hello.txt" ]];
	then
		cat hello.txt;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "11.Despliega el contenido del archivo hello con el comando head"
	read respuesta
	if [[ $respuesta = "head hello.txt" ]];
	then
		head hello.txt;
		break;
	else 
		echo $AC
	fi
done
while true
do
	echo "12.Despliega solo las ultimas dos lines del archivo hello.txt"
	read respuesta
	if [[ $respuesta = "tail -2 hello.txt" ]];
	then
		tail -2 hello.txt;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "13.Despliega las ultimas lineas del archivo hello.txt"
	read respuesta
	if [[ $respuesta = "tail hello.txt" ]];
	then
		tail hello.txt;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "14.Muestra las estadisiticas para el archivo hello.txt"
	read respuesta
	if [[ $respuesta = "stat hello.txt" ]];
	then
		stat hello.txt;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "15.Muestra las estadisticas para la carpeta dir1"
	read respuesta
	if [[ $respuesta = "stat dir1" ]];
	then
		stat dir1;
		break;
	else 
		echo $AC
	fi
done
