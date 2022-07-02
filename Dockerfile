FROM tomcat:8.5.38
RUN rm -rf /usr/local/tomcat/webapps/*
ADD mydisks.war /usr/local/tomcat/webapps/ROOT.war