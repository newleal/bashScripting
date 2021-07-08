#!/bin/bash

function user(){ # una funcion para ayudar al usuario
	cat << AYUDA_USUARIO

AYUDA:
Debes ingresar un nombre de usuario con el que estas registrado en el sistema
Saldra por pantalla
SI si esta conectado
NO si no esta conectado
AYUDA_USUARIO
}

usuario=$(whoami)


if [  "$#" -le 0 ]; then # Si la canridad total de argumentos es menor o igual a cero 0
        
	echo "No enviaste ningun parametro" # Se  uestra un msn indicando el error
        
	user	# Con esta funcion se le muestra a usuario una ayuda
        
	exit 1 # Sale del script
fi #fin de sentencia if


if [ $usuario = "$1" ];then # validara si el primer argumento es el nombre o usuario activo en el sistema
	
	echo "SI"
else
	echo "NO"

	exit 1	#Se sale del script

fi
	

