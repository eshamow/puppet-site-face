class puppet-site-face {
  file { 'application_site':
    path   => '/opt/puppet/lib/ruby/site_ruby/1.8/puppet/application/site.rb',
    source => 'puppet:///puppet-site-face/application_site.rb',
    owner  => 'pe-puppet',
    group  => 'pe-puppet',
    mode   => '0644',
  }

  file { 'face_site':
    path   => '/opt/puppet/lib/ruby/site_ruby/1.8/puppet/face/site.rb',
    source => 'puppet:///puppet-site-face/face_site.rb',
    owner  => 'pe-puppet',
    group  => 'pe-puppet',
    mode   => '0644',
  }

  file { 'face_site_dir':
    path   => '/opt/puppet/lib/ruby/site_ruby/1.8/puppet/face/site/',
    ensure => directory,
    owner  => 'pe-puppet',
    group  => 'pe-puppet',
    mode   => '0755',
  }

  file { 'face_site_create':
    path   => '/opt/puppet/lib/ruby/site_ruby/1.8/puppet/face/site/create.rb',
    source => 'puppet:///puppet-site-face/site_create.rb',
    owner  => 'pe-puppet',
    group  => 'pe-puppet',
    mode   => '0644',
  }
}
