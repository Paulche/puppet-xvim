
Facter.add("xcode_version") do
  setcode do
    version_str = Facter::Util::Resolution.exec('xcodebuild -version').split('\n').detect { |line| line =~ /Xcode/ }
    version_str =~ /Xcode (.*)/
    $1
  end
end
