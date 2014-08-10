#
# Cookbook Name:: davis-router
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'simple_iptables'
include_recipe 'sysctl'

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
