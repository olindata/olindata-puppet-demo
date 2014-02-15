# Class role::db
class role::db inherits role {
  # include mysql server on a db box
  include profile::mysql::server
}