name             'oh_my_zsh'
maintainer       'Eugen Mayer'
maintainer_email 'eugen.mayer@kontextwork.de'
license          'BSD'
description      'A chef cookbook to install and configure oh-my-zsh'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w{ubuntu centos redhat gentoo}.each { |p| supports p }

%w{user ark zsh}.each { |c| depends c }
