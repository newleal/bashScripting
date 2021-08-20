#!/bin/bash
function ayuda(){
	cat<<DESCRIPCION_AYUDA
SYNOPSYS
$0 NOMBRE_USUARIO
DESCRIPCION
Devuelve:
SI si NOMBRE_USUARIO coincide con algun usuario conectado o 
NO si NOMBRE_USUARIO no coincide con algun usuario conectado
CODIGOS DE RETORNO
1 Si el numero de parametros es distinto de 1
DESCRIPCION_AYUDA
}

# si numero de parametros distinto de 1
if [ $# -ne 1 ];then
	echo "el numero de parametros debe ser igual a 1"
	ayuda
	exit 1
fi

ESTA_CONECTADO=`who | grep $1`
if [ -z "$ESTA_CONECTADO" ];then
	echo "NO"
else
	echo "SI"
fi
