class CampersController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    rescue_from ActiveRecord::RecordInvalid, with: :invalid

    def index
        campers = Camper.all
        render json: campers
    end

    def show
        camper = Camper.find(params[:id])
        render json: camper, serializer: SingleCamperSerializer
    end

    def create
        camper = Camper.create!(camper_params)
        render json: camper, status: 201
    end

    private

    def camper_params
        params.permit(:name, :age)
    end

    def not_found
        render json: { error: "Camper not found" }, status: 404
    end

    def invalid
        render json: { errors: ["validation errors"] }, status: 422
    end
end
