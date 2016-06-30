execute 'create webapp' do
        command "sudo cp sample.war /usr/local/tomcat/apache-tomcat-8.0.36/webapps/"
end

execute 'restart tomcat' do
        command "sudo service tomcat8 restart"
end


