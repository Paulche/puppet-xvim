
class xvim::config {
  require boxen::config

  $repo       = 'https://github.com/JugglerShu/XVim.git'
  $tmpdir     = "${boxen::config::cachedir}/xvim"
  $pluginpath = "/Users/${::boxen_user}/Library/Application Support/Developer/Shared/Xcode/Plug-ins/XVim.xcplugin"

  $xcode_version_array  = split($::xcode_version, '[.]')
  $xcode_major          = $xcode_version_array[0]

  $schema = $xcode_major ? {
    '4' => "XVim\\ for\\ Xcode4",
    '5' => "XVim\\ for\\ Xcode5\\ and\\ 6",
    '6' => "XVim\\ for\\ Xcode5\\ and\\ 6",
    '7' => "XVim\\ for\\ Xcode5\\ and\\ 6",
  }
}
