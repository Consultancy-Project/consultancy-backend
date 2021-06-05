class Article
  attr_reader :headline,
              :url,
              :id

  def initialize(data)
    @headline = data[:headline]
    @url = data[:url]
    @id = data[:id]
  end
end
