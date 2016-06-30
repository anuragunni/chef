#update and upgrade the ubuntu system before installing any software
execute 'update' do
	command "sudo apt-get update"
end

execute 'upgrade' do
	command "sudo apt-get upgrade -y"
end

execute 'install ant' do
	command "sudo apt-get install ant -y"
end

