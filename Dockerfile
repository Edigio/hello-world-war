FROM tomcat:9.0.1-jre8-alpine

ADD job/java-test-cicd/lastSuccessfulBuild/artifact/com/efsavage/hello-world-war/1.0.0/hello-world-war-1.0.0.war /usr/local/tomcat/webapps/

EXPOSE 8080