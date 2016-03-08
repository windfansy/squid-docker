#!/bin/bash
# squdi3 configuration based on sites
if [ "$SITE" = "sh" ]; then
	sed -e '3s/hostname'/"${PEER}"'/g' -e '3s/port/'"${PORT}"'/g' /root/sh1-squid.conf > /etc/squid3/squid.conf
elif [ "$SITE" = "hk" ]; then
    cat /root/hk1-squid.conf > /etc/squid3/squid.conf
fi
# run squid3
squid3
# check squid3 service state
ps aux
