class Api::V1::FriendsController < ApplicationController

  def index
    @friends = Friend.all
    render json: @friends
  end

  private

  def friend_params
    params.require(:friend).permit(:user_id)
  end

end
