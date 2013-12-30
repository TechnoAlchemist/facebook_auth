class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @reviews = Review.where(movie_id: @movie.id)
  end

  private

   def movie_params
  	params.require(:movie).permit(:description, :image, :name)
  end

end
