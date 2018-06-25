package 'tree' do
  action :install
end

service 'ntpd' do
  action  [ :enable, :start ]
end

package 'ntp'

package 'git' do 
  action :install
end

file '/etc/motd' do
  content 'This server is property of swathi'
  action :create
  owner 'root'
  group 'root'
end
