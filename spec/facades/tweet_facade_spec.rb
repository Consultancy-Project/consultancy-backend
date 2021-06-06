require 'rails_helper'
describe TweetFacade do
  context "class methods" do
    context "recent_tweets" do
      it "returns array of tweet OBJECT data", :vcr do
        all_tweets = TweetFacade.recent_tweets
        expect(all_tweets).to be_a Array
        expect(all_tweets.count).to eq(10)

        tweet = all_tweets.first
        expect(tweet).to be_a Tweet
        expect(tweet.tweet).to be_a(String)
      end
    end
  end
end
