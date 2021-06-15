FROM tomcat
COPY /target/*.war /usr/local/tomcat/webapps/
ENTRYPOINT ./usr/local/tomcat/bin/startup.sh && bash


