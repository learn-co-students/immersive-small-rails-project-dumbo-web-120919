class BakeriesController < ApplicationController
    before_action :find_bakery, only: [:show, :edit, :update]
    
    def index
        @bakeries = Bakery.all
    end

    def show
    end

    def edit
    end
    
    def update
        @bakery.update(bakery_params)

        redirect_to bakery_path(@bakery)
    end

    private

    def find_bakery
        @bakery = Bakery.find(params[:id])
    end

    def bakery_params
        params.require(:bakery).permit(:name, :location, :phone, :hour, :img_url, :about, :email, :password)
    end

end
