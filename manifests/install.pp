# Class: yum_repo_server::install
#
# Installation of the yum-repo-server package
class yum_repo_server::install {
  package { $yum_repo_server::pkg_name :
    ensure  => 'installed'
  }
}
