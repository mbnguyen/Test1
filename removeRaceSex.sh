#!/bin/bash

awk -F '|' '{
#Sex and Race are not empty
if ($6 != "" && $7 != ""){
	print;
}
}' rowsFormat.csv > 2.parse

echo "Removed all rows that don't have a Race or Sex"
echo "Output file: 2.parse"

