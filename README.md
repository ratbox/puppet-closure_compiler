# Manage Google Closure Compiler

#### Table of Contents

1. [Description](#description)
2. [Setup requirements](#setup-requirements)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Limitations - OS compatibility, etc.](#limitations)
6. [Licensing information](#license)

## Description

This Puppet module manages [Google Closure Compiler](https://developers.google.com/closure/compiler) via the `closure_compiler` class.

## Setup Requirements

This module depends on the following modules:

* [puppetlabs/stdlib](https://forge.puppet.com/puppetlabs/stdlib)
* [puppet/archive](https://forge.puppet.com/puppet/archive)

Closure Compiler is written in Java so you might also want to manage it with [puppetlabs/java](https://forge.puppet.com/puppetlabs/java).

## Usage

Basic usage&ndash;install latest Closure Compiler into `/opt/closure-compiler`:

```puppet
include closure_compiler
```

Install Closure Compiler from a custom archive into a custom directory:

```puppet
class { 'closure_compiler':
  source       => 'puppet:///modules/profile/closure-compiler.zip',
  install_path => '/home/developer/closure-compiler',
}
```

## Limitations

This module uses the [puppet/archive](https://forge.puppet.com/puppet/archive) module to download and unpack Closure Compiler and thereby is subject to its limitations.

## License

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
