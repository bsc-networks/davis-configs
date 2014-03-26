#
# Cookbook Name:: test_cookbook
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "zsh" do
  action :install
end

cookbook_file "/home/nherson/.zshrc" do
  source ".zshrc"
  mode "0644"
  owner "nherson"
  group "nherson"
end
