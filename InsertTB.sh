#!/usr/bin/bash
#fetching table skeleton from meta file
tbName=`cut -d: -f1 /home/$LOGNAME/project/DBs/meta`
tbRowsNum=`cut -d: -f2 /home/$LOGNAME/project/DBs/meta`

typeset -i counter
counter=3
while true
do
	
if test $counter -ge $tbRowsNum
then	cols[($counter-3)]=`cut -d: -f$counter /home/$LOGNAME/project/DBs/meta`
else
break
fi

counter=$counter+1
done 

pk=`cut -d: -f$counter /home/$LOGNAME/project/DBs/meta`

# interacting with user
echo $tbName
echo $tbRowsNum
echo $pk


counter=3

while true
do
	
if test $counter -ge $tbRowsNum
then
echo ${cols[$counter-3]} 
else
break
fi
counter=$counter+1

done 


