# == Class: dell_openmanage
#
# Full description of class dell_openmanage here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { dell_openmanage:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2013 Your name here, unless otherwise noted.
#
class dell_openmanage {

  class{'dell_openmanage::repository':}
  class{'dell_openmanage::srvadmin':}
  class{'dell_openmanage::services':}
  class{'dell_openmanage::firmware':}

}
  Class['dell_openmanage::repository'] ->
    Class['dell_openmanage::srvadmin']   ->
      Class['dell_openmanage::services']   ->
        Class['dell_openmanage::firmware']

