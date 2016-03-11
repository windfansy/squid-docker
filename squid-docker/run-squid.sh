#!/bin/bash
# squdi3 configuration based on sites
# if [ "$SITE" = "sh" ]; then
#	sed -e '3s/hostname'/"${PEER}"'/g' -e '3s/port/'"${PORT}"'/g' /root/sh1-squid.conf > /etc/squid3/squid.conf
# elif [ "$SITE" = "hk" ]; then
#    cat /root/hk1-squid.conf > /etc/squid3/squid.conf
# fi
# show /etc/squid3/conf
cp /root/passwd /etc/squid3/passwd
chmod 777 /root/run-squid.sh /root/sh-run.sh /root/hk-run.sh 
chmod o+r /etc/squid3/passwd

echo "{$PEER} {$PORT}" > /root/parentSquid.config  
#run squid3
#exec /usr/sbin/squid3
# check squid3 service state
#ps aux
