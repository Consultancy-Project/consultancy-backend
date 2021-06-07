class Article
  attr_reader :headline,
              :url,
              :id,
              :image,
              :summary

  def initialize(data)
    @headline = data[:headline]
    @url = data[:url]
    @id = data[:id]
    @image = data[:image]
    @summary = data[:summary]
  end
end
