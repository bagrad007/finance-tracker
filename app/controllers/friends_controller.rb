class FriendsController < ApplicationController
  def create
    friend = User.find(params[:friend])

    current_user.friendships.build(friend_id: friend.id)
    if current_user.save
      flash[:notice] = "Started Following"
      redirect_to friends_path
    else
      flash[:error] = "Unable to Follow"
      redirect_to friends_path
    end
  end

  def destroy
    friend = current_user.friendships.where(friend_id: params[:id]).first
    friend.destroy
    flash[:notice] = "Stopped Following"
    redirect_to friends_path
  end
  
end
