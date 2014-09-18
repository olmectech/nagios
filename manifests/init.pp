# == Class: nagios
class nagios {

exec { 'Install-nrpe-nagios':
command => '/opt/puppet/bin/ruby /etc/puppetlabs/puppet/modules/nagios/manifests/nagios.rb',
}
}
