require 'rails_helper'

describe ArticleService do
  context 'class methods' do
    context 'returns articles' do
      it 'test_artcile_service', :vcr do
        results = ArticleService.top_articles
        expect(results).to be_a(Array)
        expect(results.first).to be_a(Hash)
        expect(results.first).to have_key :id
        expect(results.first).to have_key :headline
        expect(results.first).to have_key :url
      end
    end
  end
end
