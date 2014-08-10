default[:dnsmasq][:enable_dhcp] = false
default[:dnsmasq][:dhcp] = {}
default[:dnsmasq][:dhcp_options] = []
default[:dnsmasq][:enable_dns] = true
default[:dnsmasq][:dns] = {
  'bogus-priv' => nil,
  'domain-needed' => nil,
  'local' => '/davis.house/',
  'interface' => 'eth1',
  'domain' => 'davis.house',
}
default[:dnsmasq][:dns_options] = []
default[:dnsmasq][:managed_hosts] = {}
default[:dnsmasq][:managed_hosts_bag] = "managed_hosts"
default[:dnsmasq][:user] = 'dnsmasq'

