FROM tomcat
RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/
RUN cd /usr/local/tomcat/ && rm -rf webapps.dist
COPY /target/*.war /usr/local/tomcat/webapps/
ENTRYPOINT ["/bin/sh", "-c", "while true; do sleep 1; done"]
