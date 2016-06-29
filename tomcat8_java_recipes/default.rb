#!/bin/bash
execute 'update' do
	command "sudo apt-get update"
end

execute 'upgrade' do
	command "sudo apt-get upgrade -y"
end

execute 'install git and ant' do
	command "sudo apt-get install git ant -y"
end

execute 'tomcat tar file' do
        command "
                 if [ -f 'apache-tomcat-8.0.36.tar.gz' ]
                        then break
                 else
                        wget http://apache.mirrors.tds.net/tomcat/tomcat-8/v8.0$
                 fi"
end

execute 'unzip tar file' do
        command "
                 if [ -d '/usr/local/tomcat' ]
                        then break
                 else
                        mkdir /usr/local/tomcat
                 fi
                 tar -xvzf apache-tomcat-8.0.36.tar.gz
                 sudo mv apache-tomcat-8.0.36 /usr/local/tomcat/ "
end
