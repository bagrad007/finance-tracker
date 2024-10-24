class User < ApplicationRecord
  has_many :user_stocks
  has_many :stocks, through: :user_stocks

  # validates_uniqueness_of :name, :ticker, on: :create, message: "has already been taken"

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def can_track_stock?(ticker_symbol)
    under_stock_limit? && !stock_already_tracked?(ticker_symbol)
  end

  def stock_already_tracked?(ticker_symbol)
    stock = Stock.check_db(ticker_symbol)
    return false unless stock
    stocks.where(id: stock.id).exists?
  end

  def under_stock_limit?
    (stocks.count < 10) ? true : false
  end
end
