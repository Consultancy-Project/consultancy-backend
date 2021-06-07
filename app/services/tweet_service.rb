class TweetService
  def self.conn
    Faraday.new(url: 'https://api.twitter.com') do |faraday|
      faraday.headers['authorization'] = "Bearer #{ENV['twitter_token']}"
    end
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.recent_tweets
    parse_json(conn.get("/2/tweets/search/recent?query=stocks&expansions=author_id&user.fields=name"))
  end
end
