#!/usr/bin/bash
dname=$(pwd | cut -d/ -f5)
dpath=$(pwd)
export $dpath
export $dname 
echo "             **** MANIPULATE $dname TABLES ****"
select choice in "Create Table" "Delete Table" "Update Table" Back
do
case $choice in 
"Create Table")
echo "database created" 
./CreateTB.sh
;;
"Delete Table")
echo "database deleted"
./DeleteTB
 ;;
"Update Table")
echo "database updated";;
*)
echo exited
break
;;
esac
done

