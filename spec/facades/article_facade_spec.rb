require 'rails_helper'
describe ArticleFacade do
  context "class methods" do
    context "top_articles" do
      it "returns array of article OBJECT data" do
        all_articles = ArticleFacade.top_articles
        expect(all_articles).to be_a Array
        expect(all_articles.count).to eq(3)

        article = all_articles.first
        expect(article).to be_a Article
        expect(article.headline).to be_a(String)
        expect(article.url).to be_a(String)
      end
    end
  end
end
