class TweetFacade
  def self.recent_tweets
    tweet_data = TweetService.recent_tweets
    
    tweet_users = tweet_data[:includes][:users].map do |data|
        data
    end.first(3)
    
    tweet_data = tweet_data[:data].map do |data|
        data
    end.first(3)
    
    3.times do |n|
      tweet_data[n][:username] = tweet_users[n][:username]
    end
    
    tweet_data.map do |data|
        Tweet.new(data)
    end
  end
end
