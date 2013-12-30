class ReviewsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.create!(review_params)
    redirect_to @review.movie, notice: "Review has been created."
  end

  private
  	def review_params
  		params.require(:review).permit(:content, :rating, :name, :movie_id) 
  	end 
end

