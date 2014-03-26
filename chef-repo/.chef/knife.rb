# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "nherson"
client_key               "#{current_dir}/nherson.pem"
validation_client_name   "davis_house-validator"
validation_key           "#{current_dir}/davis_house-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/davis_house"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
