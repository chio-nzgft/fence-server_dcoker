FROM centos:centos7
RUN yum install -y net-tools fence-virt fence-virtd fence-virtd-multicast fence-virtd-libvirtd
RUN yum clean all
ADD /helper_scripts /usr/sbin
RUN mkdir -p /etc/cluster
ADD /defaults /etc/cluster
ENTRYPOINT /usr/sbin/launch.sh
