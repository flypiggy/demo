class UsersController < Sinatra::Base

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

# 一开始错误的写法
# get '/users/:id/tweets' do
#   user = User.find(id: params[:id]).values
#   result = Twitter.user_timeline(user[:twitter], count: 10).to_json
# end

  get '/users/:id/tweets' do
    user = User.find id: params[:id]
    result = user.get_tweets.to_json
  end
end
