#!/bin/bash

echo "Esjercicio insertar una coma ,  del script $0"

mensaje=""
contador=1

if [  "$#" -le 0 ]; then
	echo "No enviaste ningun parametro"
	exit 1
fi

for var in "$@"; do
	if [ $contador -eq 1 ]; then
		mensaje="$1"
		contador=0
	else
		mensaje="$mensaje, $var"
	fi
done

echo $mensaje"."

