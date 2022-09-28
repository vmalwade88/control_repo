node default {
}

node 'master.puppet.vm1' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to my puppet program \n VM name : ${fqdn}\nVM IP Address : ${ipaddress}",
  }
}

node /^web/ {
  include role::app_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to my puppet program \n VM name : ${fqdn}\nVM IP Address : ${ipaddress}",
  }
}

node /^db/ {
  include role::db_server
}
