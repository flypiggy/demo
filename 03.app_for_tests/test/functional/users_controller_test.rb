class UsersControllerTest < FunctionalTestCase
  def setup
    User.model.truncate
    @user = FactoryGirl.build(:li)
    @user.save
  end

  def test_get_users
    get "/users"

    p last_response.body
    assert_equal 200, last_response.status
  end

  def test_get_single_user
    get "/users/#{@user.id}"

    assert_equal 200, last_response.status
  end

  def test_get_user_tweet
    get "/users/#{@user.id}/tweets"

    assert_equal 200, last_response.status
  end

end
