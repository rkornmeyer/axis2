#
# WSO2 Enterprise Service Bus 4.8.1
#
FROM java:7
MAINTAINER Massimo Danieli, massimo@massimodanieli.com

RUN wget -P /opt http://mirrors.ukfast.co.uk/sites/ftp.apache.org/axis/axis2/java/core/1.7.4/axis2-1.7.4-bin.zip && \
apt-get update && \
    apt-get install -y zip ant maven && \
    apt-get clean && \
    unzip /opt/axis2-1.7.4-bin.zip -d /opt && \
    rm /opt/axis2-1.7.4-bin.zip

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64
EXPOSE 8080
CMD ["/opt/axis2-1.7.4-bin.zip/bin/axis2server.sh"]
