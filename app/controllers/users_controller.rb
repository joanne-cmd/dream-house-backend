class UsersController < ApplicationController
    wrap_parameters format: []
    Skip_after_action :authorize, only: [:create]

    # finding the current user using the session id
    
    def loggedin
        user = User.find_by(id: session[:user_id] ) 
        if(user)
           render json: {loggedin: true, user: user}
        else
           render json: {loggedin: false}
        end      
      end

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
