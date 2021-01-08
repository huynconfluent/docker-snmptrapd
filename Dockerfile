# Docker image for snmp-trap-server with auth
FROM centos:centos7

MAINTAINER Huy Nguyen, https://github.com/huynconfluent

RUN yum update -y
RUN yum install -y net-snmp net-snmp-utils net-snmp-devel

# copy our SNMP Manage Server config
COPY snmptrapd.conf /etc/snmp/snmptrapd.conf
COPY bootstrap.sh /tmp/bootstrap.sh

RUN chmod +x /tmp/bootstrap.sh

EXPOSE 161:161/udp
EXPOSE 162:162/udp

CMD ["/tmp/bootstrap.sh"]
