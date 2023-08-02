#!/bin/bash

# Dependencies
# 1. mailutils[deb arch], mailx[centos redhl]

sender_email=$1

echo "Subject: "
read subject

echo
echo "Message: "
read message

echo "{$subject}" | mail -s "{$message}" $sender_email
