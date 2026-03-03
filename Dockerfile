FROM tomcat:latest
EXPOSE 8080
COPY target/my-first-web-app.war /usr/local/tomcat/webapps/my-first-web-app.war
