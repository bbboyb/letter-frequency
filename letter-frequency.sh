#!/bin/bash
#Author SHAOKAI CHEN

filename="LittleWomen.txt"
tr -d '[:punct:][:digit:][:space:]' < $filename |
cat
