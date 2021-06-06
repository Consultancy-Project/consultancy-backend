class Tweet
  attr_reader :tweet,
              :id

  def initialize(data)
    @tweet = data[:text]
    @id = data[:id]
  end
end
