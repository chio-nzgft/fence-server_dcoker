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
UID         PID   PPID  C STIME TTY          TIME CMD
root          1      0  0 03:27 ?        00:00:00 /bin/bash /usr/sbin/launch.sh
root         14      1  0 03:27 ?        00:00:00 /usr/sbin/fence_virtd -w
root         17      1  0 03:27 ?        00:00:00 sleep 5
root         18      0  0 03:27 ?        00:00:00 bash
root         33     18  0 03:27 ?        00:00:00 ps -ef
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

