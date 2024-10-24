class User < ApplicationRecord
  has_many :user_stocks
  has_many :stocks, through: :user_stocks

  validates_presence_of :name, :ticker, on: :create, message: "can't be blank"
  # validates_uniqueness_of :name, :ticker, on: :create, message: "has already been taken"

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        
end
