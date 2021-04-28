#!/bin/bash

sudo apt-get update -y; sudo apt-get install python3-opencv -y; sudo apt-get install git -y; sudo apt install python3-pip -y; pip3 install youtube_dl; pip3 install boto3; pip3 install pytz; mkdir .aws; git clone https://github.com/arjunravikumar/maskdetection
echo Please enter the your AWS CLI.
unset tmp
while :
do
 read line
 [[ $line == "" ]] && tmp="${tmp:0:$((${#tmp}-1))}" && break
 tmp="$tmp"$line$'\n'
done
echo $tmp | tr " " "\n" > .aws/credentials
python3 maskdetection/detectMasks.py