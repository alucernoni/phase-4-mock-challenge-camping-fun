class SignupsController < ApplicationController

    def create 
        new_signup = Signup.create(signup_params)
        render json: new_signup, status: :created
    end

    def signup_params
        {time: params[:time], camper_id: params[:camper_id], activity_id: params[:activity_id]}
    end

end
