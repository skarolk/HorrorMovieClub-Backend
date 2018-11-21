class Api::V1::MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render json: @movies
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :poster, :synopsis)
  end

end
