name             'lxmx_oh_my_zsh'
maintainer       'Vasily Mikhaylichenko'
maintainer_email 'vaskas@lxmx.com.au'
license          'BSD'
description      'A chef cookbook to install and configure oh-my-zsh'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.4.0'

%w{user ark zsh}.each { |c| depends c }
