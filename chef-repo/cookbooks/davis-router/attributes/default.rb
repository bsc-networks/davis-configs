default['sysctl']['params'] = {
  "net" => {
    "ipv4" => {
      "ip_forward" => "1",
      "conf" => {
        "default" => {
          "rp_filter" => "1",
          "accept_source_route" => "0"
        }
      },
      "tcp_syncookies" => "1"
    },
    "bridge" => {
      "bridge-nf-call-ip6tables" => "0",
      "bridge-nf-call-iptables" => "0",
      "bridge-nf-call-arptables" => "0"
    }
  },
  "kernel" => {
    "sysrq" => "0",
    "core_uses_pid" => "1",
    "msgmnb" => "65536",
    "msgmax" => "65536",
    "shmmax" => "68719476736",
    "shmall" => "4294967296"
  }
}
default['sysctl']['allow_sysctl_conf'] = true
