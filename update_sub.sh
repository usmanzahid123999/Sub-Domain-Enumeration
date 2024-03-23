#!/bin/bash
echo “Enter domain: ”
read a
assetfinder $a | sort -u > t1.txt
subfinder -d $a | sort -u > t2.txt
cat t1.txt t2.txt | sort -u > res.txt
cat res.txt
echo
echo
echo live domain are
cat res.txt | httpx -silent -follow-redirects -mc 200 | tee -a live.txt
