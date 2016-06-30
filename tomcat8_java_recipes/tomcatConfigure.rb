#!/bin/sh

#Download tomcat tar file from http://www.tomcat.org
execute 'tomcat tar file' do
        command "
                 if [ -f 'apache-tomcat-8.0.36.tar.gz' ]
                        then break
                 else
                        wget http://apache.mirrors.tds.net/tomcat/tomcat-8/v8.0.36/bin/apache-tomcat-8.0.36.tar.gz
                 fi"
end

#unzip the tar file and move it to /usr/local/tomcat directory
execute 'unzip tar file' do
        command "
                 if [ -d '/usr/local/tomcat' ]
                        then break
                 else
                        mkdir /usr/local/tomcat
                 fi
                 if [ -d apache-tomcat-8.0.36 ]
                 	then break
                 else
                 	tar -xvzf apache-tomcat-8.0.36.tar.gz
                 fi
                 if [ -d '/usr/local/tomcat/apache-tomcat-8.0.36' ]
                 	then break
                 else
                 	sudo mv apache-tomcat-8.0.36 /usr/local/tomcat/
                 fi"
end

#copy context.xml, web.xml, tomcat-users.xml, server.xml to the respective directories
execute 'copying server.xml' do
	command "sudo cp server.xml /usr/local/tomcat/apache-tomcat-8.0.36/conf/server.xml"
end

execute 'copying web.xml' do
	command	"sudo cp web.xml /usr/local/tomcat/apache-tomcat-8.0.36/conf/web.xml"
end

execute 'copying context.xml' do
	command	"sudo cp context.xml /usr/local/tomcat/apache-tomcat-8.0.36/conf/context.xml"
end

execute 'copying tomcat-users.xml' do
	command	"sudo cp tomcat-users.xml /usr/local/tomcat/apache-tomcat-8.0.36/conf/tomcat-users.xml"
end

#setup tomcat8 to run ./catalina.sh and ./shutdown.sh
execute 'set up to service tomcat8' do
	command	"sudo cp tomcat8 /etc/init.d/tomcat8"
end

#Start the tomcat server
execute 'start tomcat' do
	command "sudo service tomcat8 start"
end
