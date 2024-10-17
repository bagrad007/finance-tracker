class StocksController < ApplicationController
  def show
    client = TwelvedataRuby.client
    @stock = client.quote(symbol: params[:id])
  end
  def search
    if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])
      if @stock
        render "users/my_portfolio"
      else
        flash[:alert] = "Please use a valid Symbol"
        redirect_to my_portfolio_path
      end
    else
      flash[:alert] = "Please use a valid Symbol"
      redirect_to my_portfolio_path
    end
  end

  def index
    client = TwelvedataRuby.client
    @stocks = client.stocks(exchange: "NASDAQ")
  end
end
