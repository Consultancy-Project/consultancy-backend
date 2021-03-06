require 'rails_helper'

describe TweetService do
  context 'class methods' do
    context 'returns tweets' do
      it 'test_artcile_service', :vcr do
        results = TweetService.recent_tweets
        expect(results).to be_a(Hash)
        expect(results[:data].first).to be_a(Hash)
        expect(results[:data].first).to have_key :id
        expect(results[:data].first).to have_key :text
      end
    end
  end
end
