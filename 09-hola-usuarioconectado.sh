#!/bin/bash

# funcion de ayuda al usuario
function ayuda(){
	cat<< AYUDA_USUARIO

en el scrip $0, se debe ingresar el nombre de usuario que se 
encuentra en la sesion activa de la maquina.
Saldra por pantalla:
SI si esta conectado
NO si no es el usuario conectado
AYUDA_USUARIO
}

#variable donde se almacena el comando
USUARIO=`whoami`

# Si no se escribe ningun argumento, saldra ayuda
if [ "$#" -le 0 ];then
	echo "No se escribio ningun valor"
	
	ayuda

	exit 1
fi

if [ "$USUARIO" = "$1" ];then
	source 09usuario-sino "$1"
else
	echo "NO"
	exit 1
fi
