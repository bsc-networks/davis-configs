#
# Cookbook Name:: davis-farnsworth
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'sysctl'

sysctl_param 'kernel.shmmax' do
  value 1024*1024*1024
end

sysctl_param 'kernel.shmall' do
  value 1585166022
end

include_recipe 'farnsworth'


