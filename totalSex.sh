#!/bin/bash

awk -F '|' 'BEGIN{
sumMale = sumFemale = 0;
}
{
if ($2 == "Male") {
	sumMale += 1;
}
if ($2 == "Female") {
        sumFemale += 1;
}
}
END {
printf ("Total number of Male: %d\n", sumMale);
printf ("Total number of Female: %d\n", sumFemale);
}' 2.asr

