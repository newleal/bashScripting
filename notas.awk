
BEGIN {
	print "+-----------------------------------------------+"
	print "| NOMBRE  	EX1	EX2 	EX3 | MED |APTO |"
	print "+-----------------------------------------------+" 
}
# Se guardan los valores en variables y se saca promedio por cada fila
{
	suma2+=$2
	suma3+=$3
	suma4+=$4
	apto="NO"
	mediaFila=($2+$3+$4)/3
	if ( mediaFila >= 5 ) {
		apto="SI"
		aptos++
	}
	print "| "$0" | "mediaFila" | "apto"  |"
}

# Se imprime promedio de cada individuo
END {

	media2=suma2/3
	media3=suma3/3
	media4=suma4/3
	media=(media2+media3+media4)/3
	print "+-----------------------------------------------+"
	print "| MEDIAS	"media2"	"media3"	"media4" | "media" |  "aptos"  |"
        print "+-----------------------------------------------+"	
}
