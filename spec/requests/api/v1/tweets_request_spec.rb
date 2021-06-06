require 'rails_helper'

RSpec.describe 'Stock Tweets', :vcr do
  it 'can get top 50 recent tweets' do
    get "/api/v1/tweets"
    tweets = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_successful

    expect(tweets).to have_key(:data)
    expect(tweets[:data]).to be_an(Array)

    tweets[:data].each do |article|
      expect(article).to have_key(:id)
      expect(article[:id]).to be_a(String)
      expect(article).to have_key(:type)
      expect(article[:type]).to be_a(String)
      expect(article).to have_key(:attributes)
      expect(article[:attributes]).to be_a(Hash)

      expect(article[:attributes]).to have_key(:tweet)
      expect(article[:attributes][:tweet]).to be_a(String)
    end
  end
end
