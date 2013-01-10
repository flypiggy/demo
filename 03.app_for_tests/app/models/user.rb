class User < Sequel::Model

  def get_tweets
    tweets = []
    Twitter.user_timeline(self.twitter, count: 10).each do |t|
      tweets << t.text
    end
    tweets
  end

end
