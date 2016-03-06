#!/usr/bin/bash
if [ "$__DEFAULT_DOMAIN_NAME__" = "sh-windfansy.myalauda.cn" ]; then
    sed -e '3s/hostname/hk-windfansy.myalauda.cn/g' -e '3s/port/12756/g' /root/sh1-squid.sh > /etc/squid3/squid.conf
elif [ "$__DEFAULT_DOMAIN_NAME__" = "hk-windfansy.myalauda.cn" ]; then
    cat /root/hk1-squid.sh > /etc/squid3/squid.conf
fi

#/run.sh
