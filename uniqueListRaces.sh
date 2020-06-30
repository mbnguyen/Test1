#!/bin/bash

awk -F '|' 'BEGIN{
count = 0;
}
{
race[$3] += 1;
if (race[$3] == 1){
	list[count++] = $3;
}
}
END {
printf ("List of unique Races:\n");
for (i in list) {
	printf("%s: %d\n", list[i], race[list[i]]);
}
}' 2.asr

