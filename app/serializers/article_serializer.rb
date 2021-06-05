class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  set_id :id

  attributes :headline, :url
end
