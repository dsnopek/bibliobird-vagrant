
import "modules.pp"

# Some Aegir overrides:
$aegir_hostmaster_url = 'hostmaster.bibliobird-vm.dev'
$aegir_email = 'aegir@example.com'
#$aegir_force_login_link = true

Exec {
  path => '/usr/bin:/bin',
}

include aegir
include aegir::queue_runner

# Drupal 7 version of Bibliobird
aegir::platform {'bibliobird-master':
  makefile => 'https://raw.github.com/dsnopek/bibliobird/master/build-bibliobird.make',
}

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

