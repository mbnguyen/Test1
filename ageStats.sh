#!/bin/bash

awk -F '|' 'BEGIN{
count["White Male"] = count["White Female"] = count["Black Male"] = count["Black Female"] = 0;
sumAge["White Male"] = sumAge["White Female"] = sumAge["Black Male"] = sumAge["Black Female"] = 0;
minAge["White Male"] = minAge["White Female"] = minAge["Black Male"] = minAge["Black Female"] = 1000;
maxAge["White Male"] = maxAge["White Female"] = maxAge["Black Male"] = maxAge["Black Female"] = -1;
avgAge["White Male"] = avgAge["White Female"] = avgAge["Black Male"] = avgAge["Black Female"] = 0;
}
{
if (($2 == "Male" || $2 == "Female") && ($3 == "White" || $3 == "Black")) {
        str = $3 " " $2;
	count[str] += 1;
	sumAge[str] += $1;
	if (minAge[str] > $1) {
        	minAge[str] = $1;
	}
	if (maxAge[str] < $1) {
        	maxAge[str] = $1;
	}
}
}
END {
for (s in count) {
	printf ("\n%s:\n", s);
	printf ("Total number: %d\n", count[s]);
	if (count[s] != 0) {
		avgAge[s] = sumAge[s] / count[s];
	}
	printf ("Average Age: %f\n", avgAge[s]);
	printf ("Min Age: %d\n", minAge[s]);
	printf ("Max Age: %d\n", maxAge[s]);
}
}' 2.asr
