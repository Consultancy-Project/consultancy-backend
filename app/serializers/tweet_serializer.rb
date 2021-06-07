class TweetSerializer
  include FastJsonapi::ObjectSerializer
    
  attributes :tweet, :username
end
