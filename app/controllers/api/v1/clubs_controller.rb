class Api::V1::ClubsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  def index
    @clubs = Club.all
    render json: @clubs
  end

  def create
    @club = Club.create(club_params)
    if @club.save
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        ClubSerializer.new(@club)
      ).serializable_hash
      ActionCable.server.broadcast 'clubs_channel', serialized_data
      render json: serialized_data
      #head :ok
    end
  end

  private

  def club_params
    params.require(:club).permit(:movie_id, :active)
  end

end
