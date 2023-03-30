class UsersController < ApplicationController
    # get all users
    def index
        users= User.all
        render json: users
    end 
    # get a single user with their reviews
    def show 
        user= User.find(params[:id])
        if user
            render json: user, serializer: UserAndReviewSerializer , status: :ok
        else
            render json: {error: "user not found"}, status: :not_found
        end
    end
    # create a user
    def create
        user= User.create!(user_params)
        if user.valid?
            render json:user, status: :created
        else
            render json: user.error.messages
        end
    end

    private
    def user_params
        params.permit(:name, :email, :password)
    end

end
