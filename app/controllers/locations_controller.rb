class LocationsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index 
        locations = Location.all 
        render json: locations, except: [:created_at, :updated_at], status: :ok
    end

    def create
        location = Location.create!(location_params)
        render json: location, status: :created 
    end

    private 

    def location_params
        params.require(:location).permit(:name, :address, :city, :image, :description)
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
