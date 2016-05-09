#!/bin/bash


echo "Bruteforcing DNS Infos for all Targets against found DNS server"

for word in $(cat ./results/DNS-IP.txt);do 
echo $word >./results/var.tmp;
for target in $(cat ./results/online-IP.txt);do 
server=$(cat ./results/var.tmp);
#Wierd double loop .. well 
nslookup $target $server -type=any |tee -a ./results/$server-DNSanswers.txt ./results/$target/$target-DNSAnswerby$server.txt  & 
done 
done
rm ./results/var.tmp;


