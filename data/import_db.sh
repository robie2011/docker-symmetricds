#!/bin/bash
# file="import.sql"
# if [ -f "$file" ]
# then
# 	echo "$file found for import"
#     mysql < "$file"
# fi

mysql -uroot -proot < /data/import.sql