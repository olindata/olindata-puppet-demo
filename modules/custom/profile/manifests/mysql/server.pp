class profile::mysql::server inherits profile::mysql::client {
  include mysql::server
  
  Mysql::Db <<| tag == "server-${::fqdn}"|>>
}