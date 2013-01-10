class UsersControllerTest < FunctionalTestCase
  def setup
    @user = FactoryGirl.build(:li)
  end

  def test_get_users
    get "/users"

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
