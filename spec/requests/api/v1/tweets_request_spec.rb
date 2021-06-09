require 'rails_helper'

RSpec.describe 'Stock Tweets' do
  it 'can get top 50 recent tweets' do ####, :vcr
    get "/api/v1/tweets"
    tweets = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_successful

    expect(tweets).to have_key(:data)
    expect(tweets[:data]).to be_an(Array)

    tweets[:data].each do |tweet|
      expect(tweet).to have_key(:id)
      expect(tweet[:id]).to be_a(String)
      expect(tweet).to have_key(:type)
      expect(tweet[:type]).to be_a(String)
      expect(tweet).to have_key(:attributes)
      expect(tweet[:attributes]).to be_a(Hash)

      expect(tweet[:attributes]).to have_key(:tweet)
      expect(tweet[:attributes][:tweet]).to be_a(String)
      expect(tweet[:attributes]).to have_key(:username)
      expect(tweet[:attributes][:username]).to be_a(String)
    end
  end
  
  it 'SAD PATH - Bad server response' do
    # get "/api/v1/tweets"

    json_response = {
                      "title": "Unauthorized",
                      "type": "about:blank",
                      "status": 401,
                      "detail": "Unauthorized"
                    }

    response_1 = stub_request(:get, "https://api.twitter.com/2/tweets/search/recent?expansions=author_id&query=stocks&user.fields=name").
             with(
               headers: {
           	  'Accept'=>'*/*',
           	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
           	  'Authorization'=>"Bearer #{ENV['twitter_token']}",
           	  'User-Agent'=>'Faraday v1.4.2'
               }).
             to_return(status: 401, body: json_response.to_json, headers: {})
    require "pry";binding.pry               
    bad_response = TweetService.recent_tweets
    # tweets = JSON.parse(response.body, symbolize_names: true)
    expect(TweetService.recent_tweets).to raise_error(ExternalApiError)
    expect(bad_response).to raise_error(ExternalApiError)

    expect(tweets).to have_key(:errors)
    expect(tweets[:errors]).to be_an(Array)

    expect(tweet[:errors].first).to have_key(:status)
    expect(tweet[:errors][0][:status]).to be_a(String)
    expect(tweet[:errors].first).to have_key(:message)
    expect(tweet[:errors][0][:message]).to be_a(String)
    expect(tweet[:errors].first).to have_key(:code)
    expect(tweet[:errors][0][:code]).to be_a(Integer)
  end
end
