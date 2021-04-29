#!/bin/bash

cd ..
sudo apt-get update -y;
sudo apt-get install git -y;
sudo apt install python3-pip -y;
pip3 install boto3;
mkdir .aws;
pip3 install dynamodb-json;
git clone https://github.com/arjunravikumar/maskdetection;
clear;
echo Please enter the your AWS CLI.
unset tmp
while :
do
 read line
 [[ $line == "" ]] && tmp="${tmp:0:$((${#tmp}-1))}" && break
 tmp="$tmp"$line$'\n'
done
echo $tmp | tr " " "\n" > .aws/credentials
python3 maskdetection/emailNotifications.py
