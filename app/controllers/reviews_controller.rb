class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new(review_params)
    @review.save
    redirect_to show_id_path(@restaurant)
  end
end
