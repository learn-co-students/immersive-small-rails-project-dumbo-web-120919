class FlavorsController < ApplicationController
    before_action :find_flavor, only: [:edit, :update, :destroy]

    def index
        @flavors = Flavor.all
    end

    def new
        @flavor = Flavor.new
    end

    def create
        @flavor = Flavor.create(flavor_params)

        redirect_to flavors_path
    end

    def edit
    end
    
    def update
        @flavor.update(flavor_params)

        redirect_to flavors_path
    end

    def destroy
        @flavor.destroy 

        redirect_to flavors_path
    end

    private

    def find_flavor
        @flavor = Flavor.find(params[:id])
    end

    def flavor_params
        params.require(:flavor).permit(:name, :description)
    end
end
