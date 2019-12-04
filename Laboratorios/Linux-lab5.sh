#!/bin/bash

echo -e "\033[40m\033[31mLABORATORIO 5 - MANIPULAR O PARSEAR CONTENIDO DE ARCHIVOS\033[0m"

echo -e "\033[40m\033[35mIngresa el comando segun la instruccion\033[0m"

clear

AC="Vuelve a intentarlo"

while true
do
	echo "1.Buscar la palabra Linux en el archivo hello"
	read respuesta
	if [[ $respuesta = "grep linux hello" ]];
	then
		grep -i linux dir3/hello.txt
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "2.Busca la palabra hello en toda la carpeta actual"
	read respuesta
	if [[ $respuesta = "grep -r hello" ]];
	then
		grep -r scriptslabs/;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "3.Busca la palabra linux en el archivo hello, imprimiendo el numero de linea del archivo"
	read respuesta
	if [[ $respuesta = "grep -n linux hello" ]];
	then
		grep -n linux dir3/hello.txt;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "4.Despliega las lineas que no coinciden con el patron de busqueda"
	read respuesta
	if [[ $respuesta = "grep -v world hello" ]];
	then
		grep -v world dir3/hello.txt;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "5.Encuentra la linea mas larga dentro del archivo hello"
	read respuesta
	if [[ $respuesta = "wc -L hello" ]];
	then
		wc -L /home/Eduardo/ScriptsPosix/dir2/hello.txt;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "6.Agregar contenido a los archivos new.txt y linux.txt"
	read respuesta
	if [[ $respuesta = "echo -e" ]]
	then
		touch new.txt linux.txt;
		echo -e "col1 col2 r1\nco15 col6 r2\ncol3 col4 r3" >> new.txt;
		echo -e "Hello\nlinux\nProgrammers paradise" >> linux.txt;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "7.Muestra solo la primer columna del archivo new.txt"
	read respuesta
	if [[ $respuesta = "cut -f1 -d" ]];
	then
		cut -f1 -d' ' new.txt;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "8.Extrae la tercer columna del archivo new.txt"
	read respuesta
	if [[ $respuesta = "cut -f3 -d" ]];
	then
		cut -f3 -d' ' new.txt;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "9.Mezcla las lineas de los archivos hello y new.txt"
	read respuesta
	if [ $respuesta = "paste" ]
	then
		paste /home/Eduardo/ScriptsPosix/dir2/hello.txt /home/Eduardo/ScriptsPosix/new.txt;
		paste -s /home/Eduardo/ScriptsPosix/dir2/hello.txt /home/Eduardo/ScriptsPosix/new.txt;
		break;
	else
		echo $AC	
	fi
done
while true
do
	echo "10.Ordena el contenido del archivo new.txt"
	read respuesta
	if [[ $respuesta = "sort new.txt" ]];
	then
		sort new.txt;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "11.Compra el contenido del archivo hello y linux.txt"
	read respuesta
	if [ $respuesta = "diff" ]
	then
		diff /home/Eduardo/ScriptsPosix/dir2/hello.txt linux.txt;
		break;
	else
		echo $AC
	fi
done
