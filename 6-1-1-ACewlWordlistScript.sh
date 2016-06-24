#!/bin/bash



#Wordlist
echo "Lets make a cewl wordlist .. shall we"
for word in $(cat ./results/HTTP-IP.txt);do cewl http://$word > tee -a ./results/$word/$word-cewlwordlist.txt   & done 
#cat ./results/wordlist.tmp |sort -u >./results/wordlist.txt
#rm ./results/wordlist.tmp  

