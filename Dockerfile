FROM registry.access.redhat.com/jboss-eap-6/eap64-openshift
MAINTAINER PVM

RUN curl http://nc2plenv01.lnc.com/adminsoft/OSE/src/ROOT.war -o $JBOSS_HOME/standalone/deployments/ROOT.war
RUN curl http://nc2plenv01.lnc.com/adminsoft/OSE/src/AMAXGrid1.war -o $JBOSS_HOME/standalone/deployments/AMAXGrid.war
RUN curl http://nc2plenv01.lnc.com/adminsoft/OSE/src/mysql-connector-java-5.1.40-bin.jar -o $JBOSS_HOME/standalone/deployments/mysql-connector-java-5.1.40-bin.jar
RUN curl http://nc2plenv01.lnc.com/adminsoft/OSE/src/mysql-ds.xml -o $JBOSS_HOME/standalone/deployments/mysql-ds.xml

EXPOSE 8080
