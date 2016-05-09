#!/bin/bash

echo "Making a rough Ovierview for OS, will just grab the first guess. Check it manually !!!"
echo > ./results/overview-os.txt;
for word in $(cat ./results/online-IP.txt); do 
echo -n $word  >> ./results/overview-os.txt; 
echo -n "=" >> ./results/overview-os.txt; 
cat ./results/$word/$word-nmapOS*.xml |grep osmatch |head -n +1 |cut -d "\"" -f 2 >> ./results/overview-os.txt; 

done

