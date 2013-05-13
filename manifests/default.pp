
import "modules.pp"

Exec {
  path => '/usr/bin:/bin',
}

# Some Aegir overrides:
#$aegir_force_login_link = true

include mvpcreator
include mvpcreator::devtools

class {'mvpcreator::webserver':
  aegir_url => 'hostmaster.bibliobird-vm.dev',
  aegir_email => 'aegir@example.com',
}

include bibliobird
include bibliobird::nlp

