# Manages the nginx.conf file
#
# @Summary Manages the nginx.conf file 
# @example
#   include nginx::config
class nginx::config (
  $config_path   = $nginx::params::config_path,
  $config_source = $nginx::params::config_source,
) inherits nginx::params {
  file { 'nginx_conf': 
    path   => $config_path,
    source => $config_source,
    ensure => $nginx::config_ensure, 
    notify => Service['nginx_service'],
  }
}
