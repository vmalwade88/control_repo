node default {
}

node 'master.puppet.vm1' {
  include role::master_server
}
