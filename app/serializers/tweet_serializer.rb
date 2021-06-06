class TweetSerializer
  include FastJsonapi::ObjectSerializer
    
  attributes :tweet
end
