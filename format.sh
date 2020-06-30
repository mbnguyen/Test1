#!/bin/bash

awk -vFPAT="([^,]*)|(\"[^\"]+\")" '{
out="";
for(i=1;i<=NF;i++){
	out=out"|"$i
}; 
print out;
}' rows.csv > rowsFormat.csv

echo "Format rows.csv by replacing the delimeter from ',' to '|'"
echo "Output file: rowsFormat.csv"

