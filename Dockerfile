FROM registry.access.redhat.com/jboss-eap-6/eap64-openshift
MAINTAINER PVM

RUN curl http://nc2plenv01.lnc.com/adminsoft/OSE/src/ROOT.war -o $JBOSS_HOME/standalone/deployments/ROOT.war
RUN curl http://nc2plenv01.lnc.com/adminsoft/OSE/src/AMAXGrid.war -o $JBOSS_HOME/standalone/deployments/AMAXGrid.war

EXPOSE 8080 8888



