class UserTest < TestCase
  def setup
    @user = FactoryGirl.build(:li)
  end

  def test_user
    assert_equal @user, User.find(nickname: 'ligan')
  end

  def test_get_tweets
    assert @user.get_tweets
  end

end
