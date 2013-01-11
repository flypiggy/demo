class UserTest < TestCase
  def setup
    User.model.truncate
    @user = FactoryGirl.build(:li)
    @user.save
  end

  def test_user
    assert_equal @user, User.find(nickname: 'ligan')
  end

  def test_get_tweets
    assert @user.get_tweets
  end

end
