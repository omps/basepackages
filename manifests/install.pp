#Important packages which need to be installed and setup my development area.
# I use emacs for my work

package { 'emacs': 
  ensure => 'present',
}

package { 'git':
  ensure => 'present',
}

package { 'docker':
  ensure => 'present',
}

package { 'vagrant':
  ensure => 'present',
}

