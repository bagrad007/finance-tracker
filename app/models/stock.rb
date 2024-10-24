class Stock < ApplicationRecord
  has_many :user_stocks
  has_many :users, through: :user_stocks
  def self.new_lookup(ticker_symbol)
    client = TwelvedataRuby.client
    stock = client.stocks(exchange: 'NASDAQ', symbol: ticker_symbol).parsed_body[:data][0]
    price = client.price(symbol: ticker_symbol).parsed_body[:price]

    return nil unless stock

    begin
      new(ticker: ticker_symbol, name: stock[:name], last_price: price)
    rescue StandardError
      nil
    end
  end

  def self.check_db(ticker_symbol)
    where(ticker: ticker_symbol).first
  end
end
