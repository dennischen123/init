#!/bin/bash

username=`who | awk -F' ' '{print$1}'`
# echo $username;

userdel -f $username
