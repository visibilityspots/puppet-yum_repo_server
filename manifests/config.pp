# Class: yum_repo_server::config
#
# Class which configures the yum-repo-server service
class yum_repo_server::config {
  file { '/opt/jetty/webapps/ROOT/WEB-INF/classes/configuration.properties':
    content => template('yum_repo_server/configuration.properties.erb'),
    notify  => Service[$yum_repo_server::server_type]
  }
}
