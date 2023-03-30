class SessionsController < ApplicationController
    def login
        user = User.find_by(name: params[:name])
      
        if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          render json: { status: :created, loggedin: true, user: user }
        else
          render json: { errors: ["wrong username or password"] }, status: :unauthorized
        end
      end
end
