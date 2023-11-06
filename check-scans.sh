#!/bin/bash
# Script to check for scan ran ok
### Var Section
source email.txt 
Npath=/opt/sc/orgs/1/VDB/

# The find cmd looks for scans that have run in the last 3 days.
# The for loop unzips the files into the current working directory.
for n in $(find /opt/sc/orgs/1/VDB/ -mtime -3 -name *.zip)
do unzip -q $n
done

# Creates the report
for l in $(ls *.nessus)
do echo -e "\n$l"
cat $l | grep "Scan name"|sort -u
cat $l | egrep -v '>false|>true'|egrep 'Credentialed_Scan|host-ip'
done > tmp-out

# Remove unwnted XML tags
sed -e 's/<tag name="//g' -e 's/">/: /g' -e 's/<\/tag>//g' tmp-out > output
cat output

# Sends email - Need to add an email to the email.txt for the email to work.
mailx -s "Nessus results" $emails < output
# Remove tmp files 
rm -rf tmp-out *.nessus output
