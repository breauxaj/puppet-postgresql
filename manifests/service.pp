define postgresql::service (
  $ensure = running,
  $enable = true
) {
  $service = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'nginx',
  }

  service { $service:
    ensure => $ensure,
    enable => $enable,
  }

}
