package 'dnsmasq'

service 'dnsmasq' do
  action [:enable, :start]
end

if(node[:dnsmasq][:enable_dns])
  include_recipe 'dnsmasq::dns'
end

if(node[:dnsmasq][:enable_dhcp])
  include_recipe 'dnsmasq::dhcp'
end

# Custom addition for centOS 6x
# because we need "conf-dir=/etc/dnsmasq.d"
cookbook_file '/etc/dnsmasq.conf' do
  action :create
  owner "root"
  group "root"
  mode "644"
  source "dnsmasq.conf"
end
