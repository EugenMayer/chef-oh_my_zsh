describe "installation using LWRP"
  it "should install for lenny"
    assert test "[[ -d /home/lenny/.oh-my-zsh/plugins ]]"

  it "should set theme"
    grep 'ZSH_THEME="aussiegeek"' /home/lenny/.zshrc
    assert equal "$?" 0

  it "should set plugins"
    grep 'plugins=(rvm ruby)' /home/mary/.zshrc
    assert equal "$?" 0

  it "should (un)set autocorrect"
    grep 'unsetopt correct_all' /home/mary/.zshrc
    assert equal "$?" 0

  it "should (un)set case sensitive"
    grep 'CASE_SENSITIVE="true"' /home/mary/.zshrc
    assert equal "$?" 0

end_describe
