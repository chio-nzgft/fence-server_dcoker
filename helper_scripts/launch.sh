#!/bin/bash

start()
{
        if [ ! -n "$IP" ]; then
        	export IP=`ip addr |grep "scope global eth0"|sed 's/    inet //g'|sed 's/\/16 scope global eth0//g'`
                chmod 0600 /etc/cluster/fence_xvm.key
        fi

	if [ -n "$Server" ];then
	        cp /etc/cluster/fence_virt.conf /etc/fence_virt.conf
	fi

        /usr/sbin/fence_virtd -w

}

start

while true; do
        sleep 5
done

exit 0
