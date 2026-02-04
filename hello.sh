#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
  echo "Error:: please run this script with root access"
  exit 1
fi

yum install postfix -y
if [ $? -ne 0 ]
then
  echo "Installation of postfix failed"
  exit 1
else
  echo "Installation of postfix successful"
fi

yum install maven -y
if [ $? -ne 0 ]
then
  echo "Installation of maven failed"
  exit 1
else
  echo "Installation of maven successful"
fi
