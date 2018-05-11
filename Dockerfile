FROM ubuntu:18.04

### install systemd
RUN apt update && \
    apt -y upgrade && \
    apt -y install systemd && \
    systemctl set-default multi-user.target

CMD ["/sbin/init"]
WORKDIR /host

### install other tools
#RUN apt -y install vim git wget curl unzip
#RUN DEBIAN_FRONTEND=noninteractive \
#        apt -y install ...
