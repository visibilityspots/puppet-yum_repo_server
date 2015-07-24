# puppet-yum-repo-server module [![Build Status](https://travis-ci.org/visibilityspots/puppet-yum_repo_server.svg)](https://travis-ci.org/visibilityspots/puppet-yum_repo_server)

A puppet-module which configures the [yum-repo-server](https://github.com/ImmobilienScout24/yum-repo-server)

The [generated](https://github.com/ImmobilienScout24/yum-repo-server#production-usage) yum-repo-server directory needs to be packaged to an rpm package which has to be uploaded to an available repository so the puppet module can install it.

I used the [puppet-jetty](https://github.com/visibilityspots/puppet-jetty) to configure a [jetty](http://www.eclipse.org/jetty/) server. The rpm of jetty can be found on my packagecloud.io as described beneath.

You could use for example my [packagecloud.io](https://packagecloud.io/visibilityspots/packages) repository which you can install on CentOS by:

```bash
$ curl https://packagecloud.io/install/repositories/visibilityspots/packages/script.rpm | sudo bash
```

Tested on a CentOS 6.5 machine using puppet 3.5.1, ruby 1.8.7 and jetty 9.1.3

## Options (and their defaults)

```puppet
  $pkg_name                             = 'yum-repo-server'
  $server_type                          = 'jetty'
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
```

## Example

To implement using the defaults or with hiera support:

```puppet
  node 'yum-repo-server' {
    include yum_repo_server
  }
```

For an implementation with custom values without hiera support:

```puppet
  node 'yum-repo-server' {
    class {
      'yum_repo_server':
        pkg_name => 'yum-repo-server',
        db_host  => 'localhost',
    }
  }
```
