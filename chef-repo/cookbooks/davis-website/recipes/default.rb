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

acct_passwords = data_bag("davis-website", "passwords")

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
