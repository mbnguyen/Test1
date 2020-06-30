#!/bin/bash

awk -F '|' '{
# Only print Age, Sex, Race
printf ("%s|%s|%s\n", $5, $6, $7);
}' 2.parse > 2.asr
echo "Created a document that only contains Age, Sex, Race"
echo "Output file: 2.asr"

