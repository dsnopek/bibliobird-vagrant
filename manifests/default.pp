
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

include bibliobird
include bibliobird::nlp
include bibliobird::devtools

