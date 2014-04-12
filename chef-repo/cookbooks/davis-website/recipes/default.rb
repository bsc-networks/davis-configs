#
# Cookbook Name:: davis-website
# Recipe:: default
#
# Copyright 2014, Davis House Cooperative
#
# All rights reserved - Do Not Redistribute
#

remote_directory "/var/www/html" do
  files_mode "0644"
  files_owner "root"
  mode "0644"
  owner "root"
  group "root"
  source "/website"
end
