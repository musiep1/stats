FROM registry.access.redhat.com/jboss-eap-6/eap64-openshift
MAINTAINER PVM
RUN curl -k https://raw.githubusercontent.com/VeerMuchandi/ps/master/deployments/ROOT.war -o $JBOSS_HOME/standalone/deployments/ROOT.war
EXPOSE 8080 8888



