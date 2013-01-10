if ENV["RACK_ENV"] == "test"
  DBPATH = "./db/test.db"
else
  DBPATH = "./db/development.db"
end
