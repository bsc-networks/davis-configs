#
# Cookbook Name:: davis-network-configs
# Recipe:: router
#
# Davis House Cooperative
#
# All rights reserved - Do Not Redistribute
#
# 
# Essential iptable configuration in order to
# build a basic firewall for a router running NAT
# All traffic flows through the server running
# these firewall rules

# First, basic INPUT, OUTPUT, FORWARD policies
simple_iptables_policy "INPUT" do
  policy "DROP"
end

simple_iptables_policy "FORWARD" do
  policy "ACCEPT"
end

simple_iptables_policy "OUTPUT" do
  policy "ACCEPT"
end

# Next, some rules to sit on top of the policy
# these rules go into a custom chain called 'system'
# which INPUT jumps to

# Internal INPUT is accepted
simple_iptables_rule "internal" do
  chain "system"
  rule "-i eth1"
  jump "ACCEPT"
end

# Established/Related FORWARD is accepted
simple_iptables_rule "established and related" do
  chain "system"
  rule "-m state --state RELATED,ESTABLISHED"
  jump "ACCEPT"
end

# now set up a rule for NAT
simple_iptables_rule "masq" do
  table "nat"
  direction "POSTROUTING"
  rule "-o eth0"
  jump "MASQUERADE"
end
