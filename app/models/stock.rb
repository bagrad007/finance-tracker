class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    client = TwelvedataRuby.client
    client.price(symbol: ticker_symbol).parsed_body[:price]
  end
end
