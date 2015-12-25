class coreutils::gnubin {
  $home = "/Users/${::boxen_user}"

  file { "${home}/.zshrc":
    ensure => present
  }

  file_line { "Add gnubin to all environment paths":
    path => "${home}/.zshrc",
    line => 'PATH="/opt/boxen/homebrew/opt/coreutils/libexec/gnubin:$PATH"'
  }

  file_line { "Add gnubin to all environment man paths":
    path => "${home}/.zshrc",
    line => 'MANPATH="/opt/boxen/homebrew/opt/coreutils/libexec/gnuman:$MANPATH"'
  }
}
