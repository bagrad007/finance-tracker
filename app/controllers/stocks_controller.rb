class StocksController < ApplicationController
  def show
    client = TwelvedataRuby.client
    @stock = client.quote(symbol: params[:id])
  end
  def search
    client = TwelvedataRuby.client
    @stocks = client.search(symbol: params[:search])
  end

  def index
    client = TwelvedataRuby.client
    @stocks = client.stocks(exchange: "NASDAQ")
  end
end
