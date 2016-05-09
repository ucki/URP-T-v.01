#!/bin/bash


echo Making Inputfile-NMap with UDP and TCP and 2 random ports
for word in $(cat ./results/online-IP.txt);
 do 
	echo  "T:"   > ./results/$word/$word-totalPortlist-inline-blindport-tmp.txt ;
	cat ./results/$word/$word-TCPPortlist-inline.txt >> ./results/$word/$word-totalPortlist-inline-blindport-tmp.txt ;
	echo  ",42293,23293,"   >> ./results/$word/$word-totalPortlist-inline-blindport-tmp.txt ;
	echo  "U:42293,23293,"   >> ./results/$word/$word-totalPortlist-inline-blindport-tmp.txt ;
	cat ./results/$word/$word-UDPPortlist-inline.txt >> ./results/$word/$word-totalPortlist-inline-blindport-tmp.txt ;
	paste -sd "" ./results/$word/$word-totalPortlist-inline-blindport-tmp.txt > ./results/$word/$word-totalPortlist-inline-blindport.txt;
	rm ./results/$word/$word-totalPortlist-inline-blindport-tmp.txt;
done

echo Checking the OS with 2 random ports
for word in $(cat ./results/online-IP.txt); do nmap  -Pn -n -vv  -sTU -p "$(< ./results/$word/$word-totalPortlist-inline-blindport.txt)" -O -oA ./results/$word/$word-nmapOScheck-blindport  $word & done


