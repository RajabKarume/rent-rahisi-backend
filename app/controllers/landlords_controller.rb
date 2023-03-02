class LandlordsController < ApplicationController
    def index 
        render json: Landlord.all, status: 200
    end
    def show
        landlord = find_landlords
        render json: landlord, status: 200
    end
    def create
        landlord = Landlord.create(landlord_params)
        render json: landlord, status: :created
    end
    def update
        landlord = find_landlords
        landlord.update(landlord_params)
        render json: landlord, status: 202
    end
    def destroy
        landlord = find_landlords
        landlord.destroy
        head :no_content
    end

    private

    def find_landlords
        Landlord.find_by(id: params[:id])
    end
    def landlord_params
        params.permit(:username, :full_name)
    end

end
