# docker-fence-server
Docker containerization of fence-server

## Example Create Image

Creating a docker container image is trivial. 

```
# git clone https://github.com/chio-nzgft/fence-server_dcoker.git
# cd fence-server_dcoker
# docker build -t fence .

```

For test fence-server
```

# docker run -d -P  -e Server="YES" --privileged=true --name=fence-server fence
ac76d8367de04b4734305582199e0047d786c5f8fe6a71074814337f7cd84533
# docker exec -it fence-server bash
[root@ac76d8367de0 /]# ps -ef
root          1      0  0 23:45 ?        00:00:00 /bin/bash /usr/sbin/launch.sh
root         15      1  0 23:45 ?        00:00:00 /usr/lib/systemd/systemd --system
root         30     15  0 23:45 ?        00:00:00 /usr/lib/systemd/systemd-journald
root         41     15  0 23:45 ?        00:00:00 /usr/sbin/lvmetad -f
root         45     15  0 23:45 ?        00:00:00 /usr/lib/systemd/systemd-udevd
dbus         94     15  0 23:45 ?        00:00:00 /bin/dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activati
root        101     15  0 23:45 ?        00:00:00 /usr/lib/systemd/systemd-logind
root        107      1  0 23:45 ?        00:00:00 /usr/sbin/gssproxy -D
root        118     15  0 23:45 ?        00:00:00 /usr/sbin/libvirtd
root        120     15  0 23:45 tty1     00:00:00 /sbin/agetty --noclear tty1 linux
root        139      1  0 23:45 ?        00:00:00 /usr/sbin/fence_virtd -w
nobody      174      1  0 23:45 ?        00:00:00 /sbin/dnsmasq --conf-file=/var/lib/libvirt/dnsmasq/default.conf --leasefile-ro --dhc
root        175    174  0 23:45 ?        00:00:00 /sbin/dnsmasq --conf-file=/var/lib/libvirt/dnsmasq/default.conf --leasefile-ro --dhc
root        177      0  0 23:45 ?        00:00:00 bash
root        197      0  0 23:46 ?        00:00:00 bash
root        233      1  0 23:46 ?        00:00:00 sleep 5
root        234    197  0 23:46 ?        00:00:00 ps -ef

```


```

# docker run -d -P  -e  --privileged=true --name=fence-node1 fence
ac76d8367de04b4734305582199e0047d786c5f8fe6a71074814337f7cd84533
# docker exec -it fence-node1 bash
[root@ac76d8367de0 /]# ps -ef
UID         PID   PPID  C STIME TTY          TIME CMD
root          1      0  0 03:27 ?        00:00:00 /bin/bash /usr/sbin/launch.sh
root         17      1  0 03:27 ?        00:00:00 sleep 5
root         18      0  0 03:27 ?        00:00:00 bash
root         33     18  0 03:27 ?        00:00:00 ps -ef
```

