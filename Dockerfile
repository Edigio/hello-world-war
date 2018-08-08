FROM tomcat:9.0.1-jre8-alpine

ADD ./webapp /usr/local/tomcat/webapps/

EXPOSE 8080