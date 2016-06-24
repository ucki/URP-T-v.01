#!/bin/bash



#Wordlist
echo "Lets make a cewl wordlist .. shall we, look for it under ./results/customfiles/worlist.txt"
mkdir ./results/customfiles/
for word in $(cat ./results/HTTP-IP.txt);do cat ./results/$word/$word-cewlwordlist.txt |sort -u >> ./results/wordlist.tmp & done 
cat ./results/wordlist.tmp |sort -u >./results/customfiles/wordlist.txt
rm ./results/wordlist.tmp  

