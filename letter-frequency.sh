#!/bin/bash
#Author SHAOKAI CHEN

filename="LittleWomen.txt" # Leer el archivo, usarlo como una variable $filename
temp="temp.txt" # Donde se guarda los resultados

echo "" > "temp.txt" # Crear un archivo vacio
for letra in {a..z}; do # Para cada letra a,b,c,d...z
	frecuencia=$(cat $filename | # Leer el archivo LittleWomen
		tr '[:upper:]' '[:lower:]' | # Convertir todas las letras en minuscula
		fold -w1 | # Ajustar el texto de manera que ocupe 1 caracter cada linea (-w1: anchura 1)
		grep -o "$letra" | # Encontrar las lineas que contienen $letra
		wc -l) # Contar
	echo "$frecuencia $letra" >> "$temp" # Guardar los resultados en un archivo
done
sort -rn "$temp" > "LittleWomen.lyr" # Reordenar segun numeros, y guardar los resultados en LittleWomen.lyr
rm "temp.txt"

# Otra forma (Mas rapida)------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#{
#tr -d '[:punct:][:space:][:digit:]' < $filename | #Eliminar punctuaiones, espacioes y numeros (-d: delete)
#tr '[:upper:]' '[:lower:]' |
#fold -w1 |
#sort |
#uniq -c | #Se utiliza para eliminar letras repetidas consecutivas, pero con (-c) puede contar la cantidad que aparece cada letra
#sort -rn;
#} > "$exportfilename"



