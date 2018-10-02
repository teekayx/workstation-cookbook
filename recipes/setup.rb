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
   variables(
	:name => 'Teekay'
   )
   action :create
   owner 'root'
   group 'root'
end

service 'ntpd' do
   action [ :enable, :start ]
end
