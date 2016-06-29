execute 'install jdk' do
	command "wget http://download.oracle.com/otn-pub/java/jdk/8u91-b14/jdk-8u91-linux-x64.tar.gz"
end

execute 'unzip java' do
	command "mkdir /usr/local/java
		 tar -xvzf jdk-8u91-linux-x64.tar.gz
		 mv jdk1.8.0_91 /usr/local/java/"
end

execute 'inform ubuntu to use this jdk' do
	command "sudo update-alternatives --install '/usr/bin/java' 'java' '/usr/local/java/jdk1.8.0_91/jre/bin/java' 1
		 sudo update-alternatives --install '/usr/bin/javac' 'javac' '/usr/local/java/jdk1.8.0_91/bin/javac' 1
		 sudo update-alternatives --install '/usr/bin/javaws' 'javaws' '/usr/local/java/jdk1.8.0_91/jre/bin/javaws' 1
		 sudo update-alternatives --set java /usr/local/java/jdk1.8.0_91/jre/bin/java
		 sudo update-alternatives --set javac /usr/local/java/jdk1.8.0_91/bin/javac
		 sudo update-alternatives --set javaws /usr/local/java/jdk1.8.0_91/jre/bin/javaws"
end

execute 'set $JAVA_HOME' do
	command "sudo cp profile /etc/profile
		 source /etc/profile
		 echo $JAVA_HOME"
end
