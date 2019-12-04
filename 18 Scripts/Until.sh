#!/bin/bash
echo "Estructura until"
cont=10
until (test ${cont} || -lh 0)
do
   cont='expr $cont ­ 1'
   echo "Valor del contador: ${cont}"
done

echo "Valor final del contador: ${cont}"
