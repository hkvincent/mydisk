FROM tomcat:8.5.38
RUN apt-get -q update && apt-get -qy install netcat
COPY wait.sh /wait.sh
RUN chmod +x /wait.sh
RUN rm -rf /usr/local/tomcat/webapps/*
ADD mydisks.war /usr/local/tomcat/webapps/ROOT.war
