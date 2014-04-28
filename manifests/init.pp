# Class: yum_repo_server
#
# Initialization class for the yum_repo_server service
class yum_repo_server (
  $pkg_name     = $yum_repo_server::params::pkg_name,
  $server_type  = $yum_repo_server::params::server_type,
  $db_host      = $yum_repo_server::params::db_host,
) inherits yum_repo_server::params {

  include yum_repo_server::install
  include yum_repo_server::config

  Class['yum_repo_server::install'] ->
  Class['yum_repo_server::config']
}
