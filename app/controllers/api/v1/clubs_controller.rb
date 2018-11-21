class Api::V1::ClubsController < ApplicationController

  def index
    @clubs = Club.all
    render json: @clubs
  end

  def create
    @club = Club.create(club_params)
    render json: @club, status: :created
  end

  private

  def club_params
    params.require(:club).permit(:movie_id, :active)
  end

end
