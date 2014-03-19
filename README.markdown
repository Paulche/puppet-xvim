# XVim Puppet Module for Boxen

<!---
[![Build Status](https://travis-ci.org/boxen/puppet-homebrew.png?branch=master)](https://travis-ci.org/boxen/puppet-homebrew)
-->

Install [XVim](https://github.com/JugglerShu/XVim), Xcode plugin for VIM flavored experience.

## Usage

```puppet
# Only get xvim installed
include xvim

# To get latest xvim version
include xvim::latest
```

## Required Puppet Modules

* `boxen`
* `repository`

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
