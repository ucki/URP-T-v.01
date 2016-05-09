#!/bin/bash
echo "Crashing your browser now !!!"
#iceweasel view
for word in $(cat ./results/HTTP-IP.txt);do /usr/bin/firefox -new-tab $word & done 
