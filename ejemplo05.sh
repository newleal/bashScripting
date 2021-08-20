#!/bin.bash

# script que saca un "Hola" +parametros+ "!" por pantalla
# separando cada argumento por una coma(,)
# que verifica que hayamos introducido al menos un parametro
# y que muestra una ayuda en caso de error

#function de ayuda
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

echo $ayuda
