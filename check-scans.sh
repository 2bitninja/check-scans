#!/bin/bash
# Script to check for scan ran ok
### Var Section
Npath=/opt/sc/orgs/1/VDB/

find /opt/sc/orgs/1/VDB/ -mtime -3 -name *.zip
# Might be better to do a find -mtime instead
ls -l /opt/sc/orgs/1/VDB/$(date +%Y-%m-%d)/*.zip > ls-nessus-results.txt

for n in $(cat ls-nessus-results.txt)
do unzip -q $n
done

# example: unzip /opt/sc/orgs/1/VDB/2022-11-02/4601.nessus.zip
sed -i 's/<\/tag>//g' *.nessus && sed -i 's/">//g' *.nessus && sed -i 's/<tag name="//g' *.nessus > tmp-nessus
mailx -s "Nessus results"  2bitninja@gmail.com < tmp-nessus

# Remove tmp files 
rm -f tmp-nessus
#unzip /opt/sc/orgs/1/VDB/
