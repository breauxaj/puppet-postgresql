class postgresql (
  $ensure = 'latest'
){
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => [ 'postgresql' ],
  }

  package { $required:
    ensure => $ensure
  }

}
