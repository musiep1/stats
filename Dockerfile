FROM tomcat:6.0
MAINTAINER PVM

RUN wget -O /usr/local/tomcat/webapps/AMAXGrid.war http://nc2plenv01.lnc.com/adminsoft/OSE/src/AMAXGrid.war
RUN wget -O /usr/local/tomcat/webapps/AMAXGridFWA.war http://nc2plenv01.lnc.com/adminsoft/OSE/src/AMAXGridFWA.war
RUN wget -O /usr/local/tomcat/webapps/Grid.war http://nc2plenv01.lnc.com/adminsoft/OSE/src/Grid.war

CMD ["catalina.sh", "run"]
EXPOSE 8080

# ENV DB_HOST mySqlServer
# ENV DB_USER uuu
# ENV DB_PASSWORD xxx