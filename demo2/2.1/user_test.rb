require './user.rb'
require 'test/unit'


class UserTests < MiniTest::Unit::TestCase
  def setup
    @ligan = User.new('ligan', 18)
  end

  def test_user
    assert @ligan.name, 'ligan'
    assert @ligan.age, 18
  end

  def test_adult
    assert_equal false, @ligan.adult?
  end

  def teardown
  end
end
