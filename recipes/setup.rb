package 'tree' do
  action :install
end

package 'emacs'

service 'ntpd' do
  action  [ :enable, :start ]
end

package 'ntp'

package 'git' do 
  action :install
end

#node['ipaddress']
#node['memory']['total']

file '/etc/motd' do
  content "This server is property of swathi
  Hostname: #{node['hostname']}
  Ipaddress: #{node['ipaddress']}
  Cpu: #{node['cpu']['0']['mhz']}
  Memory: #{node['memory']['total']}
 "
  owner 'root'
  group 'root'
  action :create
end
