#!/bin/bash

echo getting all User from Enum4Linux
find ./results|grep -ir "String" --include="*User*" |cut -d " " -f 4 |sort -u >./results/alluser-tmp.txt
#stupid way to get rid of "
cat ./results/alluser-tmp.txt |rev|cut -c 2- |rev|cut -c 2- >./results/alluser-tmp2.txt

echo getting Netbios user
cat ./results/netbios-machinereadable.txt |cut -d "/" -f 4 >>./results/alluser-tmp2.txt
cat ./results/alluser-tmp2.txt |sort -u >./results/alluser.txt


rm ./results/alluser-tmp.txt
rm ./results/alluser-tmp2.txt
