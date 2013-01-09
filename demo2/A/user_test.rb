require './user.rb'
require 'test/unit'


class UserTests < Test::Unit::TestCase
  def setup
    @ligan = User.new('ligan', 18)
  end

  def test_user
    assert_equal @ligan.name, 'ligan'
    assert_equal @ligan.age, 18
  end

  def test_adult
    assert_equal false, @ligan.adult?
  end

  def teardown
  end
end
