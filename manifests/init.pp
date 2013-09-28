class xvim {
  require config

  repository { $xvim::config::tmpdir:
    source => $xvim::config::repo;
  }

  exec { 'xvim.build':
    command   => "xcodebuild -scheme XVim\\ for\\ Xcode${xvim::config::xcode_major}",
    cwd       => $xvim::config::tmpdir,
    provider  => shell,
    require   => Repository[$xvim::config::tmpdir],
    creates   => $xvim::config::pluginpath,
  }
}
