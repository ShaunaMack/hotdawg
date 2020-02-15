class ReviewsController < ApplicationController
    def new
        @review = Review.new
        @review.dog_id = params[:dog]
    end

    def create
        dog = Dog.find(params[:review][:dog_id])
        @review = dog.reviews.new
        @review.user_id = current_user.id
        @review.rating = params[:review][:rating]
        @review.comment = params[:review][:comment]
        if @review.save
          redirect_to dog_path(dog)
        else
          flash[:alert] = "Ooops. There was a problem creating the review."
        end
    end
end

