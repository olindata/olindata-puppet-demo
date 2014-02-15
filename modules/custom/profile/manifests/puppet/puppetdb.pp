class profile::puppet::puppetdb {
  class { '::puppetdb':
    listen_address => '127.0.0.1'
  }
}