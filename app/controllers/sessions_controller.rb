class SessionsController < ApplicationController

    def login
        user = User.find_by_username(params[:username])
        if
            user && user.authenticate(params[:password]) 
            render json: User
        else
            render json: {errors: "Invalid username and/or password"}, status: :forbidden
        end
    end
end
