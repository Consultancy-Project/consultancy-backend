class ArticleFacade
  def self.top_articles
    ArticleService.top_articles.map {|data| Article.new(data)}.first(3)
  end
end