#!/usr/local/bin/bash

users=`grep authenticated /var/log/openvpn.log | awk '{print $7}' | sed "s/'//g" | sort -u`
echo "{"
echo "\"data\":["

for user in $users
do
    echo "    $comma{\"{#VPNUSER}\":\"$user\"}"
    comma=","
done

echo "]"
echo "}"