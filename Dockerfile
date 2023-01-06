FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install default-jdk curl wget
RUN mkdir /usr/local/tomcat
WORKDIR /usr/local/tomcat
ADD https://downloads.apache.org/tomcat/tomcat-8/v8.5.84/bin/apache-tomcat-8.5.84.tar.gz .
RUN tar -xzf apache-tomcat-8.5.84.tar.gz
RUN mv apache-tomcat-8.5.84/* /usr/local/tomcat
EXPOSE 8082
CMD /usr/local/tomcat/bin/catalina.sh run
