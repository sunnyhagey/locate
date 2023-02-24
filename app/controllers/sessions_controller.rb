class SessionsController < ApplicationController
    def create
        user = User.find_by(name: params[:name])
        # user && user.authenticate
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user.to_json(include: [:locations]), status: :ok
        else
            render json: {errors: ["Invalid User or Password"]}, status: :unauthorized
        end
    end

    def destroy
        session.delete :user_id
        head :no_content
    end
end
