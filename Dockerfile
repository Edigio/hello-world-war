FROM tomcat:9.0.1-jre8-alpine

ADD com/efsavage/hello-world-war/1.0.0/hello-world-war-1.0.0.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]