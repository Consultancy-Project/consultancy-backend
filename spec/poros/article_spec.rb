require 'rails_helper'

RSpec.describe Article do
  it 'exists' do
    attrs = {
        "category": "top news",
        "datetime": 1622832807,
        "headline": "AMC, meme stocks could spark more heat",
        "id": 6611626,
        "image": "https://image.cnbcfm.com/api/v1/image/106832585-1611944435425EQHA-U-Photo-20210129-027-Press-17-jpg?v=1611944599",
        "related": "",
        "source": "CNBC",
        "summary": "CPI inflation data is a highlight of the week ahead, as investors look forward to the Fed's June meeting.",
        "url": "https://www.cnbc.com/2021/06/04/amc-meme-stocks-could-spark"
      }
      article = Article.new(attrs)
      expect(article).to be_a Article
      expect(article.headline).to eq("AMC, meme stocks could spark more heat")
      expect(article.headline.class).to eq(String)
      expect(article.url).to eq("https://www.cnbc.com/2021/06/04/amc-meme-stocks-could-spark")
      expect(article.url.class).to eq(String)
    end
  end
