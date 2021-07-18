node edewillians1c.mylabserver.com {
  # Configure puppetdb and its underlying database
  class { 'puppetdb': }
  # Configure the Puppet master to use puppetdb
  class { 'puppetdb::master::config': }
}

node edewillians2c.mylabserver.com {
  class { 'nginx': }
}
