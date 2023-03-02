class ApartmentsController < ApplicationController
    def index 
        render json: Apartment.all, status: 200
    end
    def show
        apartment = find_apartments
        render json: apartment, status: 200
    end
    def create
        apartment = Apartment.create(apartment_params)
        render json: apartment, status: :created
    end
    def update
        apartment = find_apartments
        apartment.update(apartment_params)
        render json: apartment, status: 202
    end
    def destroy
        apartment = find_apartments
        apartment.destroy
        head :no_content
    end

    private

    def find_apartments
        Apartment.find_by(id: params[:id])
    end
    def apartment_params
        params.permit(:name, :location, :number_of_houses)
    end
end
