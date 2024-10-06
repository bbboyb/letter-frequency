#!/bin/bash
#Author SHAOKAI CHEN

filename="LittleWomen.txt"
tr -d '[:punct:][:digit:][:space:]' < $filename |
tr '[:upper:]' '[:lower:]' |
fold -w1 |
sort |
uniq -c |
sort -rn
