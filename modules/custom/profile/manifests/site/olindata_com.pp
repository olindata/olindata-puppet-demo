class profile::site($sitename = 'olindata.com') {
  apache::vhost { $sitename:
    port        => 80,
    docroot     => "/var/www/${sitename}/htdocs",
    serveradmin => "admin@${sitename}"
  }
  
  @@mysql::db { '$sitename':
    user => $sitename,
    password => mysql_password($sitename),
    tag => 'server-db1.olindata.com',
  }
}