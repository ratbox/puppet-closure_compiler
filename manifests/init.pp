# Google Closure Compiler

class closure_compiler (
  Enum['present', 'absent'] $ensure,
  Stdlib::Filesource        $source,
  Stdlib::Unixpath          $install_path,
) {
  if $ensure == 'present' {
    $tmpdir = pick($facts['env_temp_variable'], '/tmp')

    file { $install_path:
      ensure => directory,
      mode   => '0755',
      owner  => 'root',
      group  => 'root',
    }
    -> archive { "${tmpdir}/closure-compiler.zip":
      ensure       => present,
      source       => $source,
      extract      => true,
      extract_path => $install_path,
      creates      => "${install_path}/COPYING",
      cleanup      => true,
    }
  }
}

# vim: ts=2 sw=2 et
