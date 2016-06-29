
execute 'update' do
	command "sudo apt-get update"
end

execute 'upgrade' do
	command "sudo apt-get upgrade -y"
end

execute 'install git and ant' do
	command "sudo apt-get install git ant -y"
end

