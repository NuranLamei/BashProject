#!/usr/bin/bash
function CreateDB
{
		typeset exist
		read database_name
 	
		if test -d DBs/$database_name
 		then 
			exist=0	
		else
			mkdir DBs/$database_name
			exist=1
 		fi
return $exist
}

function DeleteDB
{
		typeset exist
		read database_name
 	
		if test -d DBs/$database_name
 		then 
			rm -r DBs/$database_name
			exist=1
		else
			exist=0
 		fi
return $exist
}

export  CreateDB
export DeleteDB
./home/$LOGNAME/project/scripts/DBmenu.sh
