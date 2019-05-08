FROM centos:7
EXPOSE 80
CMD [ "/run.sh" ]

RUN yum -y install httpd mod_dav_svn subversion less
COPY data /tmp
RUN /tmp/install.sh
RUN mv /tmp/run.sh /
RUN rm -rf /tmp/*
