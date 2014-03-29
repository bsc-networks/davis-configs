default[:'davis-network-configs'][:nics] = {
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
      "IPADDR" => "192.168.0.1",
      "GATEWAY" => "10.0.0.1"
    }
  },
  # test_node is temporary and for dev purposes
  "pudge" => {
    "eth0" => { 
      "DEVICE" => "eth0",
      "HWADDR" => "08:00:27:84:F7:CD",
      "TYPE" => "Ethernet",
      "UUID" => "fa90c0b8-8fb5-4e7e-afb2-4410629bac01",
      "ONBOOT" => "yes",
      "NM_CONTROLLED" => "yes",
      "BOOTPROTO" => "dhcp"
    },
    "eth2" => {
      "DEVICE" => "eth2",
      "HWADDR" => "08:00:27:F8:81:61",
      "TYPE" => "Ethernet",
      "UUID" => "b230b409-b1dc-4d4f-b04e-58c0ef23a83e",
      "ONBOOT" => "yes",
      "NM_CONTROLLED" => "yes",
      "BOOTPROTO" => "none",
      "IPADDR" => "192.168.56.147",
      "NETMASK" => "255.255.255.0"
    },
    "eth1" => {
      "DEVICE" => "eth1",
      "HWADDR" => "08:00:27:F7:F4:B9",
      "TYPE" => "Ethernet",
      "UUID" => "06793A25-271C-44A5-A2F2-A8609DEE36C0",
      "ONBOOT" => "yes",
      "NM_CONTROLLED" => "yes",
      "BOOTPROTO" => "static",
      "IPADDR" => "192.168.0.1",
      "GATEWAY" => "10.0.2.1"
    }
  }
}

                          
