class TweetFacade
  def self.recent_tweets
    TweetService.recent_tweets.map do |data|
        Tweet.new(data)
    end.first(3)
  end
end
