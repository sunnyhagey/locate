class UserLocationsController < ApplicationController
    def index
        userLocation = UserLocation.all
        render json: userLocation, status: :ok
    end 

    def destroy
        userLocation = UserLocation.find(params[:id])
        userLocation.destroy
        head :no_content
    end

end
