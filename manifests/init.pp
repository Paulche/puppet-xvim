class xvim {
  require config

  repository { $xvim::config::tmpdir:
    ensure => 'origin/develop',
    source => $xvim::config::repo,
    force  => true,
  }

  exec { 'xvim.build':
    command   => "xcodebuild -scheme XVim\\ for\\ Xcode${xvim::config::xcode_major}",
    cwd       => $xvim::config::tmpdir,
    provider  => shell,
    require   => Repository[$xvim::config::tmpdir],
    creates   => $xvim::config::pluginpath,
  }
}
