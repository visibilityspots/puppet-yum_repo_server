# Class yum_repo_server::params
#
# This class contains every parameter which will be used in this puppet module
# for setting up the yum_repo_server service
class yum_repo_server::params {
  $pkg_name                             = 'yum-repo-server'
  $server_type                          = 'jetty'
  $context                              = 'ROOT'
  $db_host                              = 'localhost'
  $db_name                              = 'rpm_db'
  $db_user                              = undef
  $db_password                          = undef
  $db_port                              = '27017'
  $graphite_host                        = undef
  $graphite_port                        = '2003'
  $statsd_host                          = undef
  $statsd_port                          = '8125'
  $type                                 = undef
  $scheduler_poolSize                   = '10'
  $metadata_tmp_dir                     = undef
  $metadata_outdated_survival_time      = '5'
  $scheduler_delay                      = '10'
  $scheduler_delete_files_delay_minutes = '10'
  $scheduler_delete_files_cron          = '*/15 * * * * *'
  $pam_service_name                     = 'password-auth'
  $whitelist                            = 'localhost'
  $security_loadbalancer_ips            = undef
  $protected_repos                      = undef
  $protected_repos_whitelist            = undef
}

