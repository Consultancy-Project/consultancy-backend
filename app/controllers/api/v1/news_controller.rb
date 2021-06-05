class Api::V1::NewsController < ApplicationController
  def index
    conn = Faraday.get("https://finnhub.io/api/v1/news?category=general&token=#{ENV['token']}")
    response = JSON.parse(conn.body, symbolize_names: true)

    articles = response.map {|data| Article.new(data)}
    render json: ArticleSerializer.new(articles)
    # THIS IS A TEST SO I CAN TRIGGER BUILD ON GH BC IT PASSES ON TRAVIS
  end
end
