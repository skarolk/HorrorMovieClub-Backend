class Api::V1::MoviesController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def index
    @movies = Movie.all
    render json: @movies
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :poster, :synopsis, :release)
  end

end
