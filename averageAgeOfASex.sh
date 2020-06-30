#!/bin/bash

awk -F '|' 'BEGIN{
sumMale = sumFemale = 0;
countMale = countFemale = 0;
}
{
if ($2 == "Male") {
        sumMale += $1;
	countMale += 1;
}
if ($2 == "Female") {
        sumFemale += $1;
	countFemale += 1;
}
}
END {
avgMale = sumMale / countMale;
avgFemale = sumFemale / countFemale;
printf ("Average age of Male: %f\n", avgMale);
printf ("Average age of Female: %f\n", avgFemale);
}' 2.asr

