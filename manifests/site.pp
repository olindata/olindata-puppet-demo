node /^www\d+$/ {
  include role::www
}

node /^db\d+$/ {
  include role::db
}

node 'noc.olindata.com' {
  include role::noc
}

node default {
  fail("Node ${::fqdn} with OS ${::operatingsystem} is not defined in Puppet, please add it there and try again.")
}