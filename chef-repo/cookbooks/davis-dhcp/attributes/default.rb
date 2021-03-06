# encoding: UTF-8

default[:dhcp][:failover] = nil
default[:dhcp][:allows] = ['bootp']

# these are the arrays that dispatch to bags or attributes for actual data
default[:dhcp][:hosts] = [
                          "file-server",
                          "tinker", # the unifi-controller
                          "unifi-ap1",
                          "unifi-ap2",
                          "unifi-ap3",
                          "unifi-ap4",
                          "unifi-ap5",
                          "unifi-ap6",
                          "razor", # farnsworth web server
                          "dazzle", # kitchen computer
                          "magnus", # Chromecast
                          "drow", # study room computer
                         ]
default[:dhcp][:groups] = []
#default[:dhcp][:networks] = ["192-168-0-0_23"]
default[:dhcp][:networks] = ["10-20-48-0_22"]
default[:dhcp][:interfaces] = ["eth1"]

# turn bag support on/off
default[:dhcp][:use_bags] = true

# these are the lookup keys for bag names
default[:dhcp][:hosts_bag] = 'dhcp_hosts'
default[:dhcp][:groups_bag] = 'dhcp_groups'
default[:dhcp][:networks_bag] = 'dhcp_networks'

# these are the attribute keys used for records when not using bags
default[:dhcp][:host_data] = {}
default[:dhcp][:group_data] = {}
default[:dhcp][:network_data] = {}

default[:dhcp][:parameters][:"default-lease-time"] = '21600'
#default[:dhcp][:parameters][:"ddns-domainname"] = "\"#{domain}\""
default[:dhcp][:parameters][:"ddns-update-style"] = 'none'
default[:dhcp][:parameters][:"max-lease-time"] = '21600'
#default[:dhcp][:parameters][:"update-static-leases"] = 'true'
#default[:dhcp][:parameters][:"one-lease-per-client"] =  'true'
default[:dhcp][:parameters][:"authoritative"] = ''
default[:dhcp][:parameters][:ignore] = "client-updates"
#default[:dhcp][:parameters][:"ping-check"] = 'true'
#default[:dhcp][:parameters][:"next-server"] = node[:ipaddress]
#default[:dhcp][:parameters][:"filename"] = '"pxelinux.0"'

default[:dhcp][:options][:'domain-name'] = "\"davis.house\""
default[:dhcp][:options][:'domain-name-servers'] = '10.20.48.1, 8.8.8.8'
default[:dhcp][:options][:'time-offset'] = "-28800"
#default[:dhcp][:options][:'host-name'] = " = binary-to-ascii (16, 8, \"-\", substring (hardware, 1, 6))"

default[:dhcp][:dir] = '/etc/dhcp'
default[:dhcp][:init_config]  = '/etc/sysconfig/dhcpd'
case node[:platform_family]
when 'rhel'
  default[:dhcp][:package_name] = 'dhcp'
  default[:dhcp][:service_name] = 'dhcpd'
  default[:dhcp][:init_config]  = '/etc/sysconfig/dhcpd'
  default[:dhcp][:init_iface] = 'DHCPDARGS'

  if node[:platform_version].to_i >= 6
    default[:dhcp][:config_file]  = '/etc/dhcp/dhcpd.conf'
  else
    default[:dhcp][:dir] = '/etc/dhcpd'
    default[:dhcp][:config_file]  = '/etc/dhcpd.conf'
  end

when 'debian'
  default[:dhcp][:package_name] = 'isc-dhcp-server'
  default[:dhcp][:service_name] = 'isc-dhcp-server'
  default[:dhcp][:config_file]  = '/etc/dhcp/dhcpd.conf'
  default[:dhcp][:init_config]  = '/etc/default/isc-dhcp-server'
  default[:dhcp][:init_iface] = 'INTERFACES'
end
