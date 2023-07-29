#!/bin/bash



DATABASE=$1
STATUS=`systemctl status $DATABASE | grep Active | awk {'print $2'}`

if ($STATUS =='active')
then
	echo "Database running"
fi
