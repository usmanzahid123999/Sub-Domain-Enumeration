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
while IFS= read -r domain; do
if httpx -status-code -silent “$domain” | grep -q ‘200’; then
echo $domain
fi
done < res.txt
