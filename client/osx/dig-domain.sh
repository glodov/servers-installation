#!/bin/bash
ALL=$(dig +nocmd $1 any +multiline +noall +answer)
IP=$(dig +short $1)

if [ -z "$IP" ]; then
	echo "Could not detect IP address by domain $1"
	exit 404
fi

#PTR=$(dig -x $IP | grep PTR)
PTR=$(nslookup $IP | grep "in-addr")

echo "Ip address:"
printf "$IP\n"
echo "------"
echo "DNS Information:"
printf "$ALL\n"
echo "------"
printf "$PTR\n"
echo "------"
