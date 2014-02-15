class role::www inherits role {
  # the webservers run apache
  include profile::apache

  # we need mysql access from the webservers
  include profile::mysql::client

  # as an example, run the olindata site
  include profile::site::olindata_com
}