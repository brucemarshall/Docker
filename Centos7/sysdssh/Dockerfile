FROM boxscale/centos7-sysd

MAINTAINER bruce@boxscale.io

WORKDIR /opt

RUN yum install -y epel-release net-tools openssh-server openssh-clients passwd sudo && \
    yum clean all

RUN rm -rf /var/cache/yum/*

ENV USERPWD changeme
ADD removekeys.sh /opt/removekeys.sh

RUN useradd -u 5001 -G users -m user && \
    echo "$USERPWD" | passwd user --stdin && \
    chmod +x /opt/removekeys.sh && \
    /usr/bin/ssh-keygen -A -v && \
    sed -i '/^session.*pam_loginuid.so/s/^session/# session/' /etc/pam.d/sshd && \
    sed -i 's/Defaults.*requiretty/#Defaults requiretty/g' /etc/sudoers && \
    rm /usr/lib/tmpfiles.d/systemd-nologin.conf

# passwordless sudo
ADD user /etc/sudoers.d/user

EXPOSE 22

CMD ["/usr/sbin/init"]

