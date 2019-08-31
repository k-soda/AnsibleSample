# https://docs.docker.com/engine/examples/running_ssh_service/#run-a-test_sshd-container
# https://docs.docker.com/config/containers/multi-service_container/

FROM centos:latest

RUN yum -y update
RUN yum -y install openssh-server
RUN yum clean all

RUN echo 'root:rootpass' | chpasswd

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
RUN /usr/sbin/sshd
CMD /sbin/init
