class UsersController < ApplicationController
  def my_portfolio
    @tracked_stocks = current_user.stocks
  end

  def my_friends
    @friends = current_user.friends
  end

  def search_friend
    if params[:friend].present?

      @friends = User.search(params[:friend])
      @friends.delete(current_user)
      if @friends
        respond_to do |format|
          format.js { render partial: 'users/friend_search_result', layout: false, content_type: 'text/javascript'}
        end
      else
        respond_to do |format| 
          flash.now[:alert] = "No Friend Found"
          format.js { render partial: 'users/friend_search_result', layout: false, content_type: 'text/javascript'}
        end
      end
    else
      respond_to do |format|
        flash.now[:alert] = "Please Enter an Email"
        format.js { render partial: 'users/friend_search_result', layout: false, content_type: 'text/javascript'}
      end
    end
  end
end
