#!/bin/bash

booleano=true

$booleano && echo "OK" || echo "no es true"

otrobool=!${booleano}

test ${otrobool} || echo "Ahora es falso"

#who && ps ­axf && echo "OK"

## comparaciones : ­eq, ­ne, ­lt, ­le, ­gt, or ­ge

valor=6

test ${valor} -le 6 && echo "Se cumple"

nuevo=${valor}

test ${nuevo} -eq ${valor}   && echo "Son los mismo"

echo "Ahora ${nuevo} es lo mismo que ${valor}"
