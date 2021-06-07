class ArticleSerializer
  include FastJsonapi::ObjectSerializer

  attributes :headline, :url, :image, :summary
end
