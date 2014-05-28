# Class: yum_repo_server
#
# Initialization class for the yum_repo_server service
class yum_repo_server (
  $pkg_name                             = $yum_repo_server::params::pkg_name,
  $server_type                          = $yum_repo_server::params::server_type,
  $context                              = $yum_repo_server::params::context,

  $db_host                              = $yum_repo_server::params::db_host,
  $db_name                              = $yum_repo_server::params::db_name,
  $db_user                              = $yum_repo_server::params::db_user,
  $db_password                          = $yum_repo_server::params::db_password,
  $db_port                              = $yum_repo_server::params::db_port,
  $graphite_host                        = $yum_repo_server::params::graphite_host,
  $graphite_port                        = $yum_repo_server::params::graphite_port,
  $statsd_host                          = $yum_repo_server::params::statsd_host,
  $statsd_port                          = $yum_repo_server::params::statsd_port,
  $type                                 = $yum_repo_server::params::type,
  $scheduler_poolSize                   = $yum_repo_server::params::scheduler_poolSize,
  $metadata_tmp_dir                     = $yum_repo_server::params::metadata_tmp_dir,
  $metadata_outdated_survival_time      = $yum_repo_server::params::metadata_outdated_survival_time,
  $scheduler_delay                      = $yum_repo_server::params::scheduler_delay,
  $scheduler_delete_files_delay_minutes = $yum_repo_server::params::scheduler_delete_files_delay_minutes,
  $scheduler_delete_files_cron          = $yum_repo_server::params::scheduler_delete_files_cron,
  $pam_service_name                     = $yum_repo_server::params::pam_service_name,
  $whitelist                            = $yum_repo_server::params::whitelist,
  $security_loadbalancer_ips            = $yum_repo_server::params::security_loadbalancer_ips,
  $protected_repos                      = $yum_repo_server::params::protected_repos,
  $protected_repos_whitelist            = $yum_repo_server::params::protected_repos_whitelist,
) inherits yum_repo_server::params {

  include yum_repo_server::install
  include yum_repo_server::config

  Class['yum_repo_server::install'] ->
  Class['yum_repo_server::config']
}
