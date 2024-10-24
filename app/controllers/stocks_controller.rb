class StocksController < ApplicationController
  def search
    if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])
      if @stock
        respond_to do |format|
          format.js{ render partial: 'users/result', layout: false, content_type: 'text/javascript' }
        end
      else
        respond_to do |format|
          flash.now[:alert] = 'Please use a valid Symbol'
          format.js{ render partial: 'users/result', layout: false, content_type: 'text/javascript' }
        end
      end
    else
      respond_to do |format|
        flash.now[:alert] = 'Please use a Symbol to search'
        format.js{ render partial: 'users/result', layout: false, content_type: 'text/javascript' }
      end
    end
  end
end
