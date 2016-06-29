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
	command "wget http://apache.mirrors.tds.net/tomcat/tomcat-8/v8.0.36/bin/apache-tomcat-8.0.36.tar.gz"
end

execute 'unzip tar file' do
	command "mkdir /usr/local/tomcat
		 cd /usr/local/tomcat
		 tar -xvzf apache-tomcat-8.0.36.tar.gz "
end
