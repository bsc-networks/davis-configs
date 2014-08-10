#
# Cookbook Name:: davis-centos-networking
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

node[:'davis-network-configs'][:nics][Chef::Config[:node_name]].keys.each do |nic|
  template "/etc/sysconfig/network-scripts/ifcfg-#{nic}" do
    source "ifcfg.erb"
    owner "root"
    group "root"
    mode "644"
    variables(:settings => node[:'davis-centos-networking'][:nics][Chef::Config[:node_name]][nic])
  end
end
