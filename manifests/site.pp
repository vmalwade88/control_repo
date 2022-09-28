node default {
}

node 'master.puppet.vm1' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to my puppet program \n VM name : ${fqdn}\nVM IP Address : ${ipaddress}\nOS Family : ${os.family}",
  }
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
