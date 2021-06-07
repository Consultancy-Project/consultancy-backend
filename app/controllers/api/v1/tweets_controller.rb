class Api::V1::TweetsController < ApplicationController
  def index
    tweets = TweetFacade.recent_tweets
    render json: TweetSerializer.new(tweets)
  end
end
