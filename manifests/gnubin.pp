class coreutils::gnubin {
  file { "/etc/environment":
    ensure => present
  }

  file_line { "Add gnubin to all environment paths":
    path => "/etc/environment",
    line => 'PATH="/opt/boxen/homebrew/opt/coreutils/libexec/gnubin:$PATH"'
  }

  file_line { "Add gnubin to all environment man paths":
    path => "/etc/environment",
    line => 'MANPATH="/opt/boxen/homebrew/opt/coreutils/libexec/gnuman:$MANPATH"'
  }
}
