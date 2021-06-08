require 'rails_helper'

RSpec.describe 'Stock Tweets', :vcr do
  it 'can get top 50 recent tweets' do
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
end
