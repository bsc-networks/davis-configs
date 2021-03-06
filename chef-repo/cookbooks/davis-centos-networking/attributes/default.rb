default[:'davis-centos-networking'][:nics] = {
  "davis-architect" => {
    "eth0" => { 
      "DEVICE" => "eth0",
      "HWADDR" => "00:24:8C:8C:4C:3F",
      "TYPE" => "Ethernet",
      "UUID" => "609ed134-c2ea-4871-9baa-7c840201e029",
      "ONBOOT" => "yes",
      "NM_CONTROLLED" => "yes",
      "BOOTPROTO" => "dhcp"
    },
    "eth1" => {
      "DEVICE" => "eth1",
      "HWADDR" => "00:24:8C:8C:49:44",
      "TYPE" => "Ethernet",
      "UUID" => "cc12f78b-9fa9-4287-931d-cf6c75bc1e89",
      "ONBOOT" => "yes",
      "NM_CONTROLLED" => "yes",
      "BOOTPROTO" => "static",
      "IPADDR" => "10.20.48.1",
      "GATEWAY" => "10.0.0.1",
      "NETMASK" => "255.255.252.0"
    }
  }
}
