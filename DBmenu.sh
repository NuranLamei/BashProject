#!/usr/bin/bash
echo "             **** THIS IS THE DATA BASE ENGINE ****"
select choice in "Create Database" "Delete DataBase" "Update DataBase" Exit
do
case $choice in 
"Create Database")
CreateDB
echo "database created" ;;
"Delete DataBase")
DeleteDB
echo "database deleted" ;;
"Update DataBase")
echo "database updated";;
*)
echo exited
break
;;
esac
done

