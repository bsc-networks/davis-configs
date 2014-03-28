#
# Cookbook Name:: davis-network-configs
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# For now, this script places a few files that are necessary
# for NIC configuration.  Basically declares one outward facing
# NIC that is configured w/ DHCP and one inward facing NIC that 
# is static and on which the DHCP server is run for the rest of
# the house.

# For each NIC listed in the attributes,
# setup the file at /etc/sysconfig/network-scripts/ifcfg-NIC_NAME
# as per the settings listed in the NIC's attributes hash
node[:nics].keys.each do |nic|
  template "/etc/sysconfig/network-scripts/ifcfg-#{nic}" do
    source "ifcfg.erb"
    owner "root"
    group "root"
    mode "644"
    variables(:settings => node[:nics][nic])
  end
end
  
