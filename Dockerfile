FROM registry.access.redhat.com/jboss-eap-6/eap64-openshift
MAINTAINER PVM

RUN test -f $JBOSS_HOME/standalone/deployments/ROOT.war && /bin/rm -f $JBOSS_HOME/standalone/deployments/ROOT.war
RUN curl http://nc2plenv01.lnc.com/adminsoft/OSE/src/AMAXGrid.war -o $JBOSS_HOME/standalone/deployments/AMAXGrid.war
RUN curl http://nc2plenv01.lnc.com/adminsoft/OSE/src/AMAXGridFWA.war -o $JBOSS_HOME/standalone/deployments/AMAXGridFWA.war
RUN curl http://nc2plenv01.lnc.com/adminsoft/OSE/src/Grid.war -o $JBOSS_HOME/standalone/deployments/Grid.war

EXPOSE 8080 8888


