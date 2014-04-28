# Class yum_repo_server::params
#
# This class contains every parameter which will be used in this puppet module
# for setting up the yum_repo_server service
class yum_repo_server::params {
  $pkg_name     = 'yum-repo-server'
  $server_type  = 'jetty'
  $db_host      = 'localhost'
}
