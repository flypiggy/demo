require "rubygems"
require "bundler"

ENV["RACK_ENV"] ||= "development"
Bundler.require(:default, ENV["RACK_ENV"].to_sym)

require File.join(File.dirname(__FILE__), 'config', 'environment')

DB = Sequel.sqlite(DBPATH)

Dir.glob "./app/{models,helpers,controllers}/*.rb" do |f|
  require f
end
