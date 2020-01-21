class CakesController < ApplicationController
    before_action :find_cake, only: [:show, :edit, :update, :destroy]
    
    def index
        @cakes = Cake.all
    end

    def show
    end

    def new
        @cake = Cake.new
    end

    def create
        @cake = Cake.create(cake_params)

        redirect_to cake_path(@cake)
    end

    def edit
    end
    
    def update
        @cake.update(cake_params)

        redirect_to cake_path(@cake)
    end

    def destroy
        @cake.destroy 

        redirect_to cakes_path
    end

    private

    def find_cake
        @cake = Cake.find(params[:id])
    end

    def cake_params
        params.require(:cake).permit(:name, :category, :occasion, :description, :serving_size, :dietary_restrictions, :img_url, :bakery_id, :baker_id)
    end
end
