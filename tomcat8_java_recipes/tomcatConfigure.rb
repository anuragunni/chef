execute 'copying server.xml' do
	command "sudo cp server.xml /usr/local/tomcat/apache-tomcat-8.0.36/conf/server.xml"
end

execute 'copying web.xml' do
	command	"sudo cp web.xml /usr/local/tomcat/apache-tomcat-8.0.36/conf/web.xml"
do

execute 'copying context.xml' do
	command	"sudo cp context.xml /usr/local/tomcat/apache-tomcat-8.0.36/conf/context.xml"
end

execute 'copying tomcat-users.xml' do
	command	"sudo cp tomcat-users.xml /usr/local/tomcat/apache-tomcat-8.0.36/conf/tomcat-users.xml"
end

execute 'set up to service tomcat8' do
	command	"sudo cp tomcat8 /etc/init.d/tomcat8"
end

execute 'start tomcat' do
	command "sudo service tomcat8 start"
end
