class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(movie_params)
  end

  private

   def movie_params
  	params.require(:Movie).permit(:description, :image, :name)
  end

end
