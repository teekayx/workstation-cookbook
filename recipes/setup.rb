package 'vim-enhanced'

package 'tree' do
   action :install
end

package 'git' do
   action :install
end

package 'ntp'

template '/etc/motd' do
   source 'motd.erb'
   action :create
   owner 'root'
   group 'root'
end

service 'ntpd' do
   action [ :enable, :start ]
end
