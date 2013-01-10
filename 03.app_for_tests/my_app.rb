class MyApp < Sinatra::Base

  def to_json hash
    JSON.generate hash
  end

  use UsersController

end
