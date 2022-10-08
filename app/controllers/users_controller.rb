class UsersController < ApplicationController
    def show 
        user = User.find(session[:user_id])
        if user 
            render json: user
        else
            render json: {errors:"user not found"}, status: :not_found
        end

    end
end
