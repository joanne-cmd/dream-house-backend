class UsersController < ApplicationController
    # get all users
    def index
        users= User.all
        render json: users
    end 
end
