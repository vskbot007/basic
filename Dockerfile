FROM        centos:7
RUN         yum -y install wget \
            && yum -y install unzip \
            && yum install -y nc \
            && yum -y install httpd && \
            && yum clean all
EXPOSE      6379
ENTRYPOINT  ["ping"]
CMD  ["google.com"]
