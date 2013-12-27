#!/bin/bash

# Display apache server status from localhost in shell every 2 seconds

a=0
while [ $a -lt 2000 ]
do
	curl -s http://localhost/server-status | sed 's/<pre>//g' | sed 's/<\/pre>//g' | sed 's/<dt>//g'  | sed 's/<dt>//g' | sed 's/<b>//g'| sed 's/<\/b>//g' | sed 's/<\/code>//g'| sed 's/<code>//g'| sed 's/<\/dl>//g' | sed 's/<dl>//g' | sed 's/\"<b><code>//g' | sed 's/<\/code><\/b>"//g'   | sed 's/<\/td><td nowrap>/\|/g' | sed 's/<tr><td><b>//g' | sed 's/<\/td><td>/\|/g' | tr -d '\n' | sed 's/<\/dt>/\n/g' | sed 's/<\/tr>/\n/g'  | sed 's/<tr><td>/\|/g' | sed 's/<tr><th>/\|/g'| sed 's/<\/th><th>/\|/g' | sed 's/<table border="0">/\n/g' | head -n35 
	a=$(($a+1))
	sleep 2
done


