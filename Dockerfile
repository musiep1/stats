FROM tomcat:6.0
MAINTAINER PVM

COPY /usr/local/admin/src/AMAXGrid.war /usr/local/tomcat/webapps/
COPY /usr/local/admin/src/AMAXGridFWA.war /usr/local/tomcat/webapps/
COPY /usr/local/admin/src/Grid.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]
EXPOSE 8080

# ENV DB_HOST mySqlServer
# ENV DB_USER uuu
# ENV DB_PASSWORD xxx