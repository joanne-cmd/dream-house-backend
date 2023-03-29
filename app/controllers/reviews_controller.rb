class ReviewsController < ApplicationController
    wrap_parameters format: []
    # get all reviews

    def index
        reviews = Review.all
        render json: reviews, status: :ok
    end
    # get reviews by id with user
    def show 
        review= Review.find(params[:id])
        if Review
            render json: review, serializer: ReviewAndUserSerializer , status: :ok
        else
            render json: {error: "Review not found"}, status: :not_found
        end
    end
    #  get methode with no user
    def show 
        review= Review.find(params[:id])
        if Review
            render json: review, status: :ok
        else
            render json: {error: "Review not found"}, status: :not_found
        end
    end
    # create  review
    def create
        review = Review.create(review_params)
        render json: review, status: :created
    end
# delete a review
def destroy
    review = Review.find(params[:id])
   if review
    review.destroy
    head :no_content
   else
    render json: {error:"review not found"}, status: :not_found
   end
end
    private

    def review_params
        params.permit(:comment)
    end
end
