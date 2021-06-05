require 'rails_helper'

RSpec.describe 'Finhub headlines' do
  it 'can get top 3 headlines' do
    get "/api/v1/news"
    news = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_successful
    
    news.each do |article|
      expect(article).to have_key(:id)
      expect(article[:id]).to be_an(Integer)
      expect(article).to have_key(:headline)
      expect(article[:title]).to be_a(String)
      expect(article).to have_key(:url)
      expect(article[:author]).to be_a(String)
    end  
  end
end