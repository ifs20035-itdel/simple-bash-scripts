#!/bin/bash

# print 1 - 10
echo {1..10}


# create 1000 file
touch file_{1..1000}
# But if we list all the files, the sorting of folders will not be to our liking in CLI.
# Instead, we'll need this command below to put pad zero in front of the number.
touch file_{01..1000}

# Create files with this series of command
touch file_{michael, banana, albert}_{01..100}_{w..d..2}



$DESTINATION = '~/Documents'
# How to copy
# -v = verbose means it display all the operation that the commands(in this case 'cp') in the CLI
# The '1' means that the standard output to rewrite into the file success.txt
# The '2' means that the standart error to rewrite into the file error.txt
cp -v * $DESTINATION 1>sucess.txt 2>error.txt

# If you want to redirect all the logs into the same file, you can do it with '&' sign
cp -v * $DESTINATION &>logs.txt
