#!/bin/bash
NOMBRE=""
echo ­n "Dame un nombre: "
read NOMBRE
case ${NOMBRE} in
  Eduardo)
   echo "${NOMBRE} dice: me dedico a Navarrux" ;;
  Mauricio)
   echo "${NOMBRE} dice: tengo un blog friki" ;;
  Mario)
   echo "${NOMBRE}> dice: .NET me gusta" ;;
  Frank)
   echo "${NOMBRE}> dice: el shell mola" ;;
  *)
   echo "A ${NOMBRE} no lo conozco"
esac
