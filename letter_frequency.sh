#!/bin/bash
#Author SHAOKAI CHEN

# Descargar el archivo.zip
wget https://raw.githubusercontent.com/swcarpentry/shell-novice/f32646f/data/shell-lesson-data.zip

# Descomprimir el archivo.zip
unzip shell-lesson-data.zip



# Leer el archivo, usarlo como una variable $filename
filename="shell-lesson-data/writing/data/LittleWomen.txt"

# crear un tempfile para guardar los resultados
echo "" > "temp.txt"
temp="temp.txt"

# Una funcion que cuenta la frecuencia de cada letra
function letter_frequency() {
	for letra in {a..z}; do # Para cada letra a,b,c,d...z
		# Guarda todo en una variable denominada $frecuencia
		frecuencia=$(cat $1 |          # Leer el archivo LittleWomen.txt
			tr '[:upper:]' '[:lower:]' |  # Convertir todas las letras en minuscula
			fold -w1 |                    # Ajustar el texto de manera que ocupe 1 caracter cada linea (-w1: anchura 1)
			grep -o "$letra" |            # Encontrar las lineas que contienen letra a,b,c,d...z
			wc -l)                        # Contar
		echo "$frecuencia $letra" >> "$temp"  # Guardar los resultados en un archivo
	done
}

# Ejecutar la funcion
letter_frequency "$filename"


# Reordenar segun numeros, y guardar los resultados en LittleWomen.lyr
sort -rn "$temp" > "LittleWomen.lyr"

# Eliminar los archivos innecesarios
rm "temp.txt"
rm -r "shell-lesson-data"
rm shell-lesson-data.zip


# WEBSITES
# https://stackoverflow.com/questions/15596199/how-can-i-count-the-number-of-characters-in-a-bash-variable
# https://www.geeksforgeeks.org/shell-script-to-count-number-of-words-characters-white-spaces-and-special-symbols/
# https://linuxcommand.org/lc3_wss0030.php
# https://www.cyberciti.biz/faq/unix-linux-appleosx-bsd-bash-count-characters-variables/#:~:text=You%20can%20use%20UNIX%20/%20Linux%20command%20such%20as%20sed,
# ChatGPT



