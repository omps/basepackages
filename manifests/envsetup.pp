vcsrepo { "/home/omps/.emacs.d":
  ensure => present,
  provider => git,
  source => 'git://github.com/omps/emacs.d.git',
  revision => 'master',
}

# install org files and notes. Private repository on gitlab, enable public before syncing
vcsrepo { "/home/omps/org":
  ensure => present,
  provider => git,
  source => 'https://gitlab.com/omps/orgfiles.git',
  revision => 'master',
}

# install my notes, private repository on gitlab, enable public before syncing.
vcsrepo { "/home/omps/notes":
  ensure => present,
  provider => git,
  source => 'https://gitlab.com/omps/notes.git',
  revision => 'master',
}

# install my dotfiles.
vcsrepo { "/home/omps/dotfiles" :
  ensure => present,
  provider => git,
  source => 'git://github.com/omps/dotfiles.git',
  revision => 'master',
}

# create symlinks

file { "/home/omps/.bashrc" :
  ensure => link,
  target => '/home/omps/dotfiles/.bashrc',
}
