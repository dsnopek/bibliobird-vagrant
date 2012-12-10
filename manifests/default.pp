
# Some Aegir overrides:
$aegir_hostmaster_url = 'hostmaster.bibliobird-vm.dev'
#$aegir_force_login_link = true

Exec {
  path => '/usr/bin:/bin',
}

import "modules.pp"

include aegir
include aegir::queue_runner

#aegir::platform {'Open_Atrium':
#  makefile => 'http://drupalcode.org/project/openatria_makefiles.git/blob_plain/refs/heads/master:/stub-openatrium.make',
#}

# Example:
#
#class apache {
#  exec { 'apt-get update':
#    command => '/usr/bin/apt-get update'
#  }
#
#  package { "apache2":
#    ensure => present,
#  }
#
#  service { "apache2":
#    ensure => running,
#    require => Package["apache2"],
#  }
#}
#
#include apache

