FROM ubuntu
MAINTAINER The abbasi
#ENV LC_ALL en_US.UTF-8


COPY ./install.sh /
RUN chmod 755 /install.sh
RUN /install.sh

# ENTRYPOINT ["/xx/sshd","sshd"]

COPY ./start.sh /
RUN chmod 755 /start.sh
CMD /start.sh
