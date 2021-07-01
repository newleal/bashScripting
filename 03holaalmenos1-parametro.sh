#!/bin/bash

#Ejemplo que valida si recibe al menos un parametro

echo "Este es el Script $0" 

if [ -n "$1" ]; then # si cadena o parametro no es vacio
	echo "Los parametros que se ingresaron son: $@" #Me muestra pore consola los las cadenas ingresadas
	echo "La cantidad de parametros ingresados son $#" #Me muestra la cantida de parametros ingresados
else #Si la cadena o parametro es vacio
	echo "No ingresaste ningun parametro" #imprime por pantalla
fi
