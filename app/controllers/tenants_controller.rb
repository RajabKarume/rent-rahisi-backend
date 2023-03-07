class TenantsController < ApplicationController
    def index 
        render json: Tenant.all, status: 200
    end
    def show
        tenant = find_tenants
        render json: tenant, status: 200
    end
    def create
        tenant = Tenant.create(tenant_params)
        render json: tenant, status: :created
    end
    def update
        tenant = find_tenants
        tenant.update(tenant_params)
        render json: tenant, status: 202
    end
    def destroy
        tenant = find_tenants
        tenant.destroy
        head :no_content
    end

    private

    def find_tenants
        Tenant.find_by(id: params[:id])
    end
    def tenant_params
        params.permit(:name, :email, :house_number, :phone_number, :rent)
    end

end
