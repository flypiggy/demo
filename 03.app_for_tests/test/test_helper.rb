ENV['RACK_ENV'] = "test"
require File.join(File.dirname(__FILE__), '..', 'initiallizer')

# factory
FactoryGirl.find_definitions

dir = File.expand_path File.dirname(__FILE__)
Dir.glob "#{dir}/mock/**/*_mock.rb" do |f|
  require f
end


require "minitest/autorun"
require "rack/test"

class TestCase < MiniTest::Unit::TestCase
end

class FunctionalTestCase < TestCase
  include Rack::Test::Methods

  def app
    UsersController
  end
end


