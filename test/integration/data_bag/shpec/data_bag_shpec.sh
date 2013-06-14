describe "installation using a data_bag"
  it "should install"
    assert test "[[ -d /home/joe/.oh-my-zsh/plugins ]]"
    assert test "[[ -d /home/testman/.oh-my-zsh/plugins ]]"

  it "should set plugins"
    grep 'plugins=(git)' /home/joe/.zshrc
    assert equal "$?" 0

  it "should set theme"
    grep 'ZSH_THEME="wedisagree"' /home/testman/.zshrc
    assert equal "$?" 0

end_describe
