#update and upgrade the system 
execute 'update' do
	command "sudo apt-get update"
end

execute 'upgrade' do
	command "sudo apt-get upgrade -y"
end

# Install MySQL Server in a Non-Interactive mode. Default root password will be "root"
execute 'non-interactive mode' do
	command "
		echo 'mysql-server-5.6 mysql-server/root_password password root' | sudo debconf-set-selections
		echo 'mysql-server-5.6 mysql-server/root_password_again password root' | sudo debconf-set-selections
		apt-get -y install mysql-server-5.6 "
end
