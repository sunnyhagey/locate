class UsersController < ApplicationController
    
    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end

    def show
        render json: @current_user
    end

    private

    def user_params 
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
