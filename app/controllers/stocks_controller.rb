class StocksController < ApplicationController
  def search
    if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])
      if @stock
        respond_to do |format|
          format.js{ render partial: 'users/result', layout: false, content_type: 'text/javascript' }
        end
      else
        flash[:alert] = 'Please use a valid Symbol'
        redirect_to my_portfolio_path
      end
    else
      flash[:alert] = 'Please use a valid Symbol'
      redirect_to my_portfolio_path
    end
  end
end
