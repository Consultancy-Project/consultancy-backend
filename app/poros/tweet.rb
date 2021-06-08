class Tweet
  attr_reader :tweet,
              :id,
              :username

  def initialize(data)
    @tweet = data[:text]
    @id = data[:id]
    @username = data[:username]
  end
end
