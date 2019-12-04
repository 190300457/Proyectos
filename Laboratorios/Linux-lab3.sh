#!/bin/bash

echo -e  "\033[40m\033[31mLABORATORIO 3 - COPIAR, RENOMBRAR, BORRAR ARCHIVOS\033[0m"

echo -e "\033[40m\033[1;33mIngresar el comando segun la instruccion\033[0m"

clear

AC="Vuelve a intentarlo"

while true
do
	echo "1.Despliega en pantalla el uso de disco de la carpeta actual"
	read respuesta
	if [ $respuesta = "du" ]
	then
		du;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "2.Despliega en pantalla el uso del disco de la carpeta actual en un formato legible"
	read respuesta
	if [[ $respuesta = "du -xh" ]];
	then
		cd; 
		du -xh /home/Eduardo/ScriptsPosix;
		cd /home/Eduardo/ScriptsPosix;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "3.Copia el archivo hello.txt a la carpeta dir2"
	read respuesta
	if [[ $respuesta = "cp -v hello.txt dir2" ]];
	then
		cp -v /home/Eduardo/ScriptsPosix/hello.txt /home/Eduardo/ScriptsPosix/dir2;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "4.Copia y renombra el archivo hello.txt a dir2/file2.txt"
	read respuesta
	if [[ $respuesta = "cp -v hello.txt dir2/file2.txt" ]];
	then
		cp -v /home/Eduardo/ScriptsPosix/hello.txt /home/Eduardo/ScriptsPosix/dir2/file2.txt;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "5.Copia todos los archivos con la extension .txt de la carpeta dir2 a la carpeta dir2/dir3"
	read respuesta
	if [[ $respuesta = "cp -vr dir2/*.txt dir2/dir3" ]];
	then
		cp -vr /home/Eduardo/ScriptsPosix/dir2/*.txt /home/Eduardo/ScriptsPosix/dir2/dir3;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "6.Copia la carpeta dir2/dir3 al directorio actual"
	read respuesta
	if [[ $respuesta = "cp -vr dir2/dir3" ]]
	then
		cp -vr /home/Eduardo/ScriptsPosix/dir2/dir3 .;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "7.Muestra el contenido de la carpeta actual"
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
	echo "8.Verifica la integridad del archivo copiado hello.txt"
	read respuesta
	if [[ $respuesta = "md5sum hello.txt" ]];
	then
		md5sum /home/Eduardo/ScriptsPosix/hello.txt;
		md5sum /home/Eduardo/ScriptsPosix/dir2/hello.txt;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "9.Mueve el archivo hello.txt a dir2/dir3/dir4/hi.txt"
	read respuesta
	if [[ $respuesta = "mv hello.txt" ]];
	then
		mv /home/Eduardo/ScriptsPosix/dir2/dir3/hello.txt /home/Eduardo/ScriptsPosix/dir2/dir3/dir4/hi.txt;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "10.Muestra el contenido de la carpeta dir4"
	read respuesta
	if [ $respuesta = "ls" ]
	then
		ls /home/Eduardo/ScriptsPosix/dir2/dir3/dir4;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "11.Crear la carpeta dir5"
	read respuesta
	if [[ $respuesta = "mkdir dir5" ]];
	then
		mkdir /home/Eduardo/ScriptsPosix/dir2/dir3/dir4/dir5;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "12.Mueve todos los archivos de texto en dir2 hacia dir5"
	read respuesta
	if [[ $respuesta = "mv dir2/*.txt dir5" ]];
	then
		mv /home/Eduardo/ScriptsPosix/dir2/*.txt dir5;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "13.Renombra la carpeta dir5 a dir50"
	read respuesta
	if [[ $respuesta = "mv dir5 dir50" ]];
	then
		mv /home/Eduardo/ScriptsPosix/dir2/dir3/dir4/dir5 /home/Eduardo/dir2/dir3/dir4/dir50;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "14.Crea un enlace llamado hello desde el directorio actual hacia dir4"
	echo -e "\033[40m\033[;1;33m#Verificar el inode de cada archivo\033[0m"
	read respuesta
	if [[ $respuesta = "ln" ]];
	then
		ln /home/Eduardo/ScriptsPosix/dir2/dir3/dir4/hi.txt;
		stat /home/Eduardo/ScriptsPosix/dir2/dir3/hello;
		stat /home/Eduardo/ScriptsPosix/dir2/dir3/dir4/hi.txt;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "15.Crea un acceso directo llamado softlink desde el directorio actual hacia dir2/dir3/dir4/hi.txt"
	read respuesta
	if [[ $respuesta = "ln -s" ]];
	then
		ln -s /home/Eduardo/ScriptsPosix/dir2/dir3/dir4/hi.txt softlink;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "16.Elimina el archivo file2.txt de forma interactiva"
	read respuesta
	if [[ $respuesta = "rm -i file2.txt" ]];
	then
		rm -i /home/Eduardo/ScriptsPosix/file2.txt;
		break;
	else
		echo $AC
	fi
done
while true
do
	echo "17.Elimina de forma interactiva y recursiva el contenido de dir50"
	read respuesta
	if [[ $respuesta = "rm -ir dir50/*" ]];
	then
		rm -ir /home/Eduardo/ScriptsPosix/dir2/dir3/dir4/dir50/*;
		break;
	else
		echo $AC
	fi
done
while true
do 
	echo "18.Elimina el directorio dir50"
	read respuesta
	if [[ $respuesta = "rmdir dir50" ]];
	then
		rmdir /home/Eduardo/ScriptsPosix/dir2/dir3/dir4/dir50;
		break;
	else
		echo $AC
	fi
done
