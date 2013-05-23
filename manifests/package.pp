define python::package ( $ensure = 'present' )
{
  if $ensure == 'present' { require python }

  case $operatingsystem {
    'debian','ubuntu': {
      package {"python-${name}": ensure => $ensure }
    }
    default: {
      package {"python-${name}": ensure => $ensure }
    }
  }
}
