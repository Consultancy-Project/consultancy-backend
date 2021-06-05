require 'rails_helper'

RSpec.describe 'Finnhub headlines', :vcr do
  it 'can get top 3 headlines' do
    get "/api/v1/news"
    news = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_successful

    expect(news).to have_key(:data)
    expect(news[:data]).to be_an(Array)

    news[:data].each do |article|
      expect(article).to have_key(:id)
      expect(article[:id]).to be_a(String)
      expect(article).to have_key(:type)
      expect(article[:type]).to be_a(String)
      expect(article).to have_key(:attributes)
      expect(article[:attributes]).to be_a(Hash)

      expect(article[:attributes]).to have_key(:headline)
      expect(article[:attributes][:headline]).to be_a(String)
      expect(article[:attributes]).to have_key(:url)
      expect(article[:attributes][:url]).to be_a(String)
    end
  end
end
