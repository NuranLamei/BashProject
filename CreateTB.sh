#!/usr/bin/bash

#  [nlamei@localhost DummyDB]$ . ../TBmenu.sh

function CreateTB {

	typeset -i exist 
	echo "Enter table name: "
	read tbName
	if test -d  /home/$LOGNAME/project/DBs/$dname/$tbName		#checks if the TB directory exists
		then 
		echo "This table exists!" 
		exist=1
	else
		mkdir /home/$LOGNAME/project/DBs/$dname/$tbName
		touch /home/$LOGNAME/project/DBs/$dname/$tbName/${tbName}Data
		exist=0	
	fi 
	
	return $exist
}

while true
do
CreateTB
ct=$?
if test $ct -eq 0
then 
	echo "Table created!"
	break #temporary until we implement the menue
elif test $ct -eq 1
then 
	echo "Failed to create table!"
	continue
fi
done
