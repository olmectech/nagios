#!/usr/bin/env ruby
#
# This program downloads a package and untars it.
#
# Must have EPEL repo wget http://ftp.riken.jp/Linux/fedora/epel/RPM-GPG-KEY-EPEL-6

# Must have EPEL key  

require 'yaml'


class Nagios 

class_variable_set(:@@file, 'yum -y install nagios nagios-devel nagios-plugins* nrpe')
class_variable_set(:@@service, '/etc/init.d/nrpe start')

 def install_file
%x[#{@@file}]
  end

def start_service
%x[#{@@service}]
end

#if Dir.exists?("#{@@dir}") 
#puts "Directory #{@@dir} exists. Exiting program."
#else
o = Nagios.new
o.install_file
o.start_service
#end
end
