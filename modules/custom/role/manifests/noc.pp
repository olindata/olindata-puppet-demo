class role::noc inherits role {
  # set up the foreman project
  include profile::puppet::foreman

  # set up the puppet master daemon
  include profile::puppet::master

  # configure puppetdb
  include profile::puppet::puppetdb
}