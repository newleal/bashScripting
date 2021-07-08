#!/bin/bash

function user(){ # una funcion para ayudar al usuario
	cat << AYUDA_USUARIO

AYUDA:
Debes ingresar un nombre de usuario con el que estas registrado en el sistema
y debes ingresarlo en el primer argumento
AYUDA_USUARIO
}

function ayuda(){  #funcion que me permite agregar un ayuda al usuario
	# << Este es un operador deredireccion y anteponiendo el comando le indica que lea esa entreda tiene una etiqueta delimitadora inicial y final en mayuscula
        cat << DESCRIPCION_AYUDA 
--------------------------------------------------------


Ayuda para ejecutar el Script

Estas en el archivo  $0.

DESCRIPCION:
Se debe ingresar uno o mas argumentos separados por un espacio.
En el primer argumento debes ingresar tu nombre de usuario para validar que te encuentras el sistema.

Al hacerlo se mostraran separados por una coma(,) de la siguiente manera:

Muestra "argumento_1, argumento_2, ...argumento_N!" 

Tambien se te mostrara si eres el usuario que tiene la sesion activa en el sistema.
DESCRIPCION_AYUDA
}

echo "Esjercicio insertar una coma ,  del script $0"        #Muestra el scrip en el que se esta ejecutando

usuario=$(whoami)
mensaje=""       # Variable que almacena los argumnentos dados por el usuario
contador=1       # Variable contador que esta inicalizado en 1

if [  "$#" -le 0 ]; then      # Si la canridad total de argumentos es menor o igual a cero 0
        
	echo "No enviaste ningun parametro"         # Se  uestra un msn indicando el error
        
	ayuda	    # Con esta funcion se le muestra a usuario una ayuda
        
	exit 1    # Sal edelscript
fi              #fin de sentencia if

for var in "$@"; do                        # Se genera un blucle con los argumentos ingresados
        if [ $contador -eq 1 ]; then       # Si la variable contador es igual a 1 se ejecuta el condicional
                mensaje="$1"               # Se guarda el primer parametro $1 en la variable mensaje
                contador=0                 # La variable contador se sobrescribe con 0
        else                               # Al ser la variable contador no igual a 1 
                mensaje="$mensaje, $var"   # La variable mensaje al tener alacemando el primer argumento $1 se le adiciona el segundo ysucesivo mediante la variable local var
       	fi 
done                                       # Despues de terminado el ciclo

echo $mensaje"."                           # Se mmostrara todos los datos almacenados

if [ $usuario = "$1" ];then                # validara si el primer argumento es el nombre o usuario activo en el sistema
	
	echo "Saludos $1, eres un usuario del sistema" # si es correcto nos mostrara el nombre del usuario activo
else
	echo "Ingresaste un nombre o valor diferente: $1" #Si el argumento no coincide se mostrara el error junto con una ayuda
	user # se llama a la funcion de ayuda al usuario
	exit 1	#Se sale del script

fi


source 07usuarioconectado.sh
