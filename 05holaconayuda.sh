#!/bin/bash

#function ayuda(){
#        echo "Se debe ingresar cadenas de texto o numeros separados por un espacio"
#        echo "Ejemplo [argumento1] [argumento2] [argumentoN]..."
#        echo "Se vera de esta manera [arg1], [arg2],..."
#}

function ayuda(){
        cat << DESCRIPCION_AYUDA
SYNOPSIS
$0 NOMBRE_1 [NOMBRE_2]...[NOMBRE_N]
DESCRIPCION
Muestra "NOMBRE_1, NOMBRE_2, ...NOMBRE_N!" por pantalla
CODIGOS DE RETORNO
1 Si el numero de parametros es menor que 1
DESCRIPCION_AYUDA
}

echo "Esjercicio insertar una coma ,  del script $0"

mensaje=""
contador=1

if [  "$#" -le 0 ]; then
        echo "No enviaste ningun parametro"
        ayuda	
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
#Saludo desde COC
