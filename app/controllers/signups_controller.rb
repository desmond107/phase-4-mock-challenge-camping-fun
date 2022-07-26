class SignupsController < ApplicationController

    rescue_from ActiveRecord::RecordInvalid, with: :invalid

    def create
        signup = Signup.create!(signup_params)
        render json: signup, status: 201
    end

    private

    def signup_params
        params.permit(:camper_id, :activity_id, :time)
    end

    def invalid
        render json: { errors: ["validation errors"] }, status: 422
    end
end
