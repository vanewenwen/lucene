#!/bin/sh
#杀死tomcat
kill -9 $(echo $(netstat -anp|grep 8080) | cut -d " " -f 7|cut -d / -f 1)
sleep 3
mvn clean compile war:war
mv target/*.war target/ROOT.war
rm -rf /usr/local/tomcat7/webapps/ROOT.*
mv target/ROOT.war /usr/local/tomcat7/webapps/
/usr/local/tomcat7/bin/startup.sh
rm -rf /usr/local/tomcat7/logs/*
tail -n 200 -f /usr/local/tomcat7/logs/catalina.out


http://fromwiz.com/share/s/2FCkpe0e6kT12b8EDe24fhjo1XaCO10gc4YF2t7kih1bwjKb
