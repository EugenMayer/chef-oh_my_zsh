include_recipe 'zsh'
include_recipe 'lxmx_oh_my_zsh'

user_account 'lenny' do
  shell '/bin/zsh'
  home '/home/lenny'
end

lxmx_oh_my_zsh_user 'lenny' do
  home  '/home/lenny'
  theme 'aussiegeek'
end

user_account 'mary' do
  shell '/bin/zsh'
end

lxmx_oh_my_zsh_user 'mary' do
  plugins        %w{rvm ruby}
  autocorrect    false
  case_sensitive true
end
