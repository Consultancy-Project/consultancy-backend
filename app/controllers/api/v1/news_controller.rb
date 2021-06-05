class Api::V1::NewsController < ApplicationController
  def index
    articles = ArticleFacade.top_articles
    render json: ArticleSerializer.new(articles)
  end
end

