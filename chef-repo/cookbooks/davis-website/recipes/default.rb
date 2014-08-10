#
# Cookbook Name:: davis-website
# Recipe:: default
#
# Copyright 2014, Davis House Cooperative
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apache2'
include_recipe 'apache2::mod_ssl'

web_app "davis.house" do
  server_name "davis.house"
  server_aliases ["www.davis.house"]
  docroot "/var/www/html"
  enable true
end

remote_directory "/var/www/html" do
  files_mode "0755"
  files_owner "root"
  mode "0755"
  owner "root"
  group "root"
  source "website"
end

pw_key = Chef::EncryptedDataBagItem.load_secret("/etc/chef/data_bag_keys/davis_passwords")
acct_passwords = Chef::EncryptedDataBagItem.load("davis-website", "passwords", pw_key)


template "/var/www/html/important_info.html" do
  source "important_info.html.erb"
  mode "0644"
  owner "root"
  group "root"
  variables({
      :netflix_pw => acct_passwords["netflix"],
      :nyt_pw => acct_passwords["nyt"],
      :hulu_pw => acct_passwords["hulu"]
  })
end
