execute 'install haproxy' do
	command "sudo apt-get install haproxy -y"
end

#setup HAProxy
file '/etc/default/haproxy' do
	content 'ENABLED=1'
	mode '0755'
end

execute 'copy files' do
	command "sudo cp haproxy.cfg /etc/haproxy/haproxy.cfg"
end

execute 'start haproxy' do
	command "sudo /etc/init.d/haproxy start"
end
