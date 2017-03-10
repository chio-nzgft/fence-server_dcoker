#!/bin/bash
SETSERVER="$Server"

start()
{
        if [ ! -n "$IP" ]; then
                export IP=`ip addr |grep "scope global eth0"|sed 's/    inet //g'|sed 's/\/16 scope global eth0//g'`
                chmod 0600 /etc/cluster/fence_xvm.key
        fi

        if [ -n "$SETSERVER" ];then
                cp /etc/cluster/fence_virt.conf /etc/fence_virt.conf
                mkdir -p /etc/systemd/system-preset/
                echo 'enable fence_virtd.service' > /etc/systemd/system-preset/00-fence_virtd.preset
                systemctl enable fence_virtd
                /usr/lib/systemd/systemd --system &
        fi
}

start

while true; do
        sleep 5
done

exit 0
