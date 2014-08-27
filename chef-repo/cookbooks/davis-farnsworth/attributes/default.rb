default[:farnsworth][:house_name] = 'Davis House'
default[:farnsworth][:short_house_name] = 'Davis'
default[:farnsworth][:house_abbrev] = 'dav'
default[:farnsworth][:site_domain] = 'davishouse.us.to'

default[:farnsworth][:enable_oauth] = true
default[:farnsworth][:oauth_providers] = ['facebook']

default[:farnsworth][:repo] = 'https://github.com/nherson/farnsworth.git'

default[:farnsworth][:app_version] = 'v1.2.1_2'

default[:farnsworth][:ssl_enabled] = true
default[:farnsworth][:ssl_cert_file] = '/etc/httpd/ssl/server.crt'
default[:farnsworth][:ssl_key_file] = '/etc/httpd/ssl/server.key'

# path on the host where the secret key for the (farnsworth, private)
# # encrypted data bag item lives
# # default: /etc/chef/keys/farnsworth_private.key
default[:farnsworth][:key_path] = '/etc/chef/data_bag_keys/farnsworth_private.key'
#
default[:farnsworth][:site_root] = '/usr/local/farnsworth'

# Special to Davis House's needs
default[:sysctl][:kernel][:shmmax] = 3000000
