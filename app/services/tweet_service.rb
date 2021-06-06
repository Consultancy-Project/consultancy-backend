class TweetService
  def self.conn
    Faraday.new(url: 'https://api.twitter.com') do |faraday|
      faraday.headers['authorization'] = ENV['twitter_token']
    end
  end
  
  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.recent_tweets
    parse_json(conn.get("/2/tweets/search/recent?query=stocks"))[:data]
  end
end