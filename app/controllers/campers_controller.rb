class CampersController < ApplicationController

    def index 
        render json: Camper.all
    end

    def show 
        show_camper = find_camper
        render json: show_camper
    end

    def create
        new_camper = Camper.create(camper_params)
        render json: new_camper, status: :created
    end

    def find_camper
       Camper.find_by(id: params[:id])
    #    if camper
    #     render json: camper
    #    else
    #     render json: {errors: "Camper not found"}, status: :not_found
    #    end
    end

    def camper_params
        {name: params[:name], age: params[:age]}
    end

end
