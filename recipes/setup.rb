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

template '/etc/motd' do
  source 'motd.erb'
  action :create
end
