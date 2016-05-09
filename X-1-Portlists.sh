#!/bin/bash

echo Making List of  TCP with open / filtered
for word in $(cat ./results/online-IP.txt); do cat ./results/$word/$word-nmap*.xml |grep portid |cut -d ">" -f 1 | cut -d "=" -f 2,3 |cut -d "\"" -f 2,4 |grep tcp|cut -d "\"" -f 2 |sort -u > ./results/$word/$word-TCPPortlist.txt & done

echo Making Inputfile List of  TCP with open / filtered 
for word in $(cat ./results/online-IP.txt); do paste -sd "," -- ./results/$word/$word-TCPPortlist.txt  > ./results/$word/$word-TCPPortlist-inline.txt & done





echo Making List of  UDP with open / filtered
for word in $(cat ./results/online-IP.txt); do cat ./results/$word/$word-nmap*.xml |grep portid |cut -d ">" -f 1 | cut -d "=" -f 2,3 |cut -d "\"" -f 2,4 |grep udp|cut -d "\"" -f 2 |sort -u > ./results/$word/$word-UDPPortlist.txt & done

echo Making Inputfile List of  UDP with open / filtered 
for word in $(cat ./results/online-IP.txt); do paste -sd "," -- ./results/$word/$word-UDPPortlist.txt  > ./results/$word/$word-UDPPortlist-inline.txt & done

echo Making Inputfile-NMap with UDP and TCP 
for word in $(cat ./results/online-IP.txt);
 do 
	echo  "T:"   > ./results/$word/$word-totalPortlist-inline-tmp.txt ;
	cat ./results/$word/$word-TCPPortlist-inline.txt >> ./results/$word/$word-totalPortlist-inline-tmp.txt ;
	echo  ","   >> ./results/$word/$word-totalPortlist-inline-tmp.txt ;
	echo  "U:"   >> ./results/$word/$word-totalPortlist-inline-tmp.txt ;
	cat ./results/$word/$word-UDPPortlist-inline.txt >> ./results/$word/$word-totalPortlist-inline-tmp.txt ;
	paste -sd "" ./results/$word/$word-totalPortlist-inline-tmp.txt > ./results/$word/$word-totalPortlist-inline.txt;
	rm ./results/$word/$word-totalPortlist-inline-tmp.txt;
done
