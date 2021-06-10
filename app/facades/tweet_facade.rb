class TweetFacade
  def self.recent_tweets
    tweet_data = TweetService.recent_tweets
    combined = combine_users_and_tweets(tweet_data)
    combined.map do |data|
        Tweet.new(data)
    end
  end

  def self.combine_users_and_tweets(tweet_data)
    array = []
    data = {}
    8.times do |index|
      data[:text] = tweet_data[:data][index][:text]
      data[:id] = tweet_data[:data][index][:id]
      data[:username] = tweet_data[:includes][:users][index][:username]
      array << data
      data = {}
    end
    array.uniq.first(3)
  end
end

