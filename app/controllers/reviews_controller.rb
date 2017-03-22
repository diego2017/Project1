class ReviewsController < ApplicationController

  def create
    # raise params
    # @place = Place.find(params[:place_id])
    # @feature = Feature.find(params[:feature_id])
    # @user = User.find(params[:user_id])

    review = Review.new(clean_params)

    # raise
    if review.save
      # raise review
      redirect_to controller: "places", action: "show", id: params[:place_id]
    else
      render :new
    end
  end

  private
  def clean_params
    params.permit(:place_id, :user_id, :feature_id, :like)
  end

end
