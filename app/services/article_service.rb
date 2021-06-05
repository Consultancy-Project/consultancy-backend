class ArticleService
  def self.conn
    Faraday.new(url: 'https://finnhub.io') do |faraday|
      faraday.params['token'] = ENV['token']
    end
  end
  
  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.top_articles
    parse_json(conn.get("/api/v1/news?category=general&token=#{ENV['token']}"))
  end
end