class pasture {

  include pasture::base

  package { 'pasture':
   ensure => present,
   provider => 'gem',
  }

  file { '/etc/pasture_config.yaml':
   source => 'puppet'///module/pasture/pasture_config.yaml',
  }

  file { '/etc/systemd/system/pasture.service':
   source => 'puppet'///module/pasture/pasture.service',
  }

  service { 'pasture':
   ensure => running,
  }
}

