#!/bin/bash
execute 'install jdk' do
        command "
                 if [ -f jdk-8u92-linux-x64.tar.gz ]
                        then break
                 else
                         wget --no-check-certificate --no-cookies --header 'Cookie: oraclelicense=accept-securebackup-cookie' http://download.oracle.com/otn-pub/java/jdk/8u92-b14/jdk-8u92-linux-x64.tar.gz
                 fi"
end

execute 'unzip java' do
        command "
                 if [ -f '/usr/local/java' ]
                        then break
                 else
                        mkdir /usr/local/java
                 fi
                 if [ -f 'jdk1.8.0_92' ]
			then break
                 else
                        tar -xvzf jdk-8u92-linux-x64.tar.gz
                 fi
                 mv jdk1.8.0_92 /usr/local/java/
end

execute 'inform ubuntu to use this jdk' do
        command "sudo update-alternatives --install '/usr/bin/java' 'java' '/usr/local/java/jdk1.8.0_92/jre/bin/java' 1
                 sudo update-alternatives --install '/usr/bin/javac' 'javac' '/usr/local/java/jdk1.8.0_92/jre/bin/javac' 1
                 sudo update-alternatives --install '/usr/bin/javaws' 'javaws' '/usr/local/java/jdk1.8.0_92/jre/bin/javaws' 1
                 sudo update-alternatives --set java /usr/local/java/jdk1.8.0_92/jre/bin/java
                 sudo update-alternatives --set javac /usr/local/java/jdk1.8.0_92/bin/javac
                 sudo update-alternatives --set javaws /usr/local/java/jdk1.8.0_92/jre/bin/javaws"
end

#setting $JAVA_HOME
execute 'adding java variable' do
        command "sudo cp profile /etc/profile"
end

#Rerun configuration file
execute 'rerunning /etc/profile'
        command "source /etc/profile"
end




