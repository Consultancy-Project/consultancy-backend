class TweetService
  def self.recent_tweets
    response = conn.get("/2/tweets/search/recent?query=stocks&expansions=author_id&user.fields=name")
    raise ExternalApiError if response.status != 200
    parse_json(response)
  end

  private
  
  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.conn
    Faraday.new(url: 'https://api.twitter.com') do |faraday|
      faraday.headers['authorization'] = "Bearer #{ENV['twitter_token']}"
    end
  end
end
