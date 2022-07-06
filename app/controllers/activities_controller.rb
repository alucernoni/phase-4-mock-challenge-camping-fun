class ActivitiesController < ApplicationController
    
    def index 
        render json: Activity.all
    end

    def destroy
        destroy_activity = find_activity
        destroy_activity.destroy
    end

    def find_activity
        Activity.find_by(id: params[:id])
    end
end
