#!/bin/bash
echo enter domain :
echo
read a
assetfinder $a > t1.txt
echo
echo
echo domain get from assetfinder are :
echo
cat t1.txt
echo
echo
subfinder -d $a > t2.txt
echo
echo
echo domain get from subfinder are :
echo
cat t2.txt
echo
echo
amass enum -passive -d $a -o t3.txt
echo
echo
echo domain get from amass are :
echo
cat t3.txt
