execute 'update' do
	command "sudo apt-get update"
end

execute 'upgrade' do
	command "sudo apt-get upgrade -y"
end

execute 'get haproxy' do
	command "sudo add-apt-repository -y ppa:vbernat/haproxy-1.5"
end
