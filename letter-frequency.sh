#!/bin/bash
#Author SHAOKAI CHEN

filename="LittleWomen.txt" #Leer el archivo, usarlo como un variable $filename
tr -d '[:punct:][:digit:][:space:]' < $filename | #Eliminar punctuaiones, espacioes y numeros (-d: delete)
tr '[:upper:]' '[:lower:]' | #Pasar todas las letras a minuscula
fold -w1 | #Ajustar el texto de manera que ocupe 1 caracter cada linea (-w1: anchura 1)
sort | #Reordenar las letras para que luego pueda usar (uniq -c) para contar
uniq -c | #Se utiliza para eliminar letras repetidas consecutivas, pero con (-c) puede contar la cantidad
#que aparecen las letras
sort -rn # (-n) Reordenar segun numeros, (-r) reverse
