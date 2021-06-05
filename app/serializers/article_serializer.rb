class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :headline, :url
end
