require 'rails_helper'

RSpec.describe Tweet do
  it 'exists' do
    attrs = {
            "id": "1401313272335196160", 
            "text": "RT @5stocksinto: 5 Singaporean Stocks Into Oil Services",
            "username": "DaFish456MAGIC"
        }
      tweet = Tweet.new(attrs)
      expect(tweet).to be_a Tweet
      expect(tweet.tweet).to eq("RT @5stocksinto: 5 Singaporean Stocks Into Oil Services")
      expect(tweet.tweet.class).to eq(String)
      expect(tweet.id).to eq("1401313272335196160")
      expect(tweet.id.class).to eq(String)
      expect(tweet.username).to eq("DaFish456MAGIC")
      expect(tweet.username.class).to eq(String)
    end
  end
