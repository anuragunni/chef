execute 'create subdirectories to store files' do
	command "sudo mkdir /usr/local/tomcat/apache-tomcat-8.0.36/webapps/hello
		 sudo mkdir /usr/local/tomcat/apache-tomcat-8.0.36/webapps/hello/WEB-INF
		 sudo mkdir /usr/local/tomcat/apache-tomcat-8.0.36/webapps/hello/WEB-INF/classes"
end

execute 'create webapp' do
	command "sudo cp index.html /usr/local/tomcat/apache-tomcat-8.0.36/webapps/hello/index.html"
end

execute 'restart tomcat' do
	command "sudo service tomcat8 restart"
end
