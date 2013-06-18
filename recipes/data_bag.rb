include_recipe 'lxmx_oh_my_zsh'

node['users'].each do |name|
  user = data_bag_item('users', name)

  if user['oh-my-zsh'] && user['oh-my-zsh']['enabled']
    lxmx_oh_my_zsh_user user['id'] do
      home           user['home']
      theme          user['oh-my-zsh']['theme']
      case_sensitive user['oh-my-zsh']['case_sensitive']
      plugins        user['oh-my-zsh']['plugins']
      autocorrect    user['oh-my-zsh']['autocorrect']
    end
  end
end
