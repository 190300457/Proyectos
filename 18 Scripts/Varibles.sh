#!/bin/sh

# Muestra el uso de variables

# No existen los tipos

# definición de variables
una_variable=117
MI_NOMBRE="Eduardo"
NOMBRES="Eduardo Mauricio Garrido Rodriguez"
BOOLEANO=true

echo "Echemos un ojo a las variables "
echo "Un número: ${una_varible}"
echo "Un nombre ${MI_NOMBRE}"
echo "Un grupo de nombres: ${NOMBRES}"

# Al script se le pueden pasar argumentos. Para recogerlos
# hay que usar : ${numero} donde:
# ${0} : nombre del script
# ${1} : primer argumento
# ${2} : segundo argumento
# ...etc.
echo "Has invocado el script pasándome ${0} eta ${1} "
# Otras variables especiales
# $# : Número de argumentos
echo "Me has pasado $# argumentos"

# $@ : grupo de parámetros del script
echo IDa: ${!} y $@

# Variables de entorno
echo "Mi directorio actual: ${PWD} y mi usuario ${UID}"

