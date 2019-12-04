#!/bin/bash
# señales

funcion () {
  echo "Se ha recibido una señal: ${FUNCNAME} ${0}"
  #exit
}

trap "funcion" INT QUIT TSTP 

echo "Señal: "
for i in a  
do
  sleep 2
  echo "ufff qué sueño..."
done
