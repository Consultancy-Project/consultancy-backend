class TweetFacade
  def self.recent_tweets
    tweet_info = TweetService.recent_tweets
    tweet_info[:data].map do |data|
        Tweet.new(data)
    end.first(3)
  end
end
