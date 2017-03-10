FROM centos:centos7
RUN yum install -y net-tools fence-virt fence-virtd fence-virtd-libvirt fence-virtd-multicast fence-virtd-serial sysvinit-tools
RUN yum clean all
ADD /helper_scripts /usr/sbin
RUN mkdir -p /etc/cluster
ADD /defaults /etc/cluster
ENTRYPOINT /usr/sbin/launch.sh
