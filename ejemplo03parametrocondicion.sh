#!/bin/bash

if [ -n "$1" ]; #Si la cadena no esta vacia, coja la variable  

then echo Hi $1.  #concatene ese parametro con el hi y muestrelo en pantalla

else  #si no

echo "No parameters found. " # muestre en pantalla no se encontraron parametros 

 fi 
