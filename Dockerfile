FROM tomcat
COPY /target/*.war /usr/local/tomcat/webapps/
ENTRYPOINT ["/bin/sh", "-c", "while true; do sleep 1; done"]
