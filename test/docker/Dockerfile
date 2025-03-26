FROM archlinux:latest

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm openssh

RUN mkdir /var/run/sshd

RUN ssh-keygen -A

RUN echo "root:root" | chpasswd

RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22

CMD ["/usr/bin/sshd", "-D"]