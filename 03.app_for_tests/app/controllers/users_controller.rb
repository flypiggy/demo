class UsersController < Sinatra::Base
  get '/' do

  end

  get '/users' do
    result = []
    User.all.each do |val|
      result << val.values
    end

    result.to_json
  end

  get '/users/:id' do
    result = User.find(id: params[:id]).values

    result.to_json
  end

  get '/users/:id/tweets' do

  end
end
