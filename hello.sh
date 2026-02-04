#!/bin/bash
USERID=$(id-u)
if[$USERID -ne 0]
then 
echo "Error:: please run this this script with root access"
fi
yum install postfix -y
if[$? -ne 0]
then 
echo "Installation of postfix is error"
exit 1
else
echo "installation of postfix is success"
fi
yum install maven -y
if[$? -ne 0]
then 
echo "installation of maven is error"
exit 1
else
echo "installation of maveen is success"
fi
