class BakeriesController < ApplicationController
    before_action :find_bakery, only: [:index, :show, :edit, :update]
    
    def index
        @cakes = Cake.all 
        @bakers = Baker.all 
    end

    def show
    end

    def edit
    end
    
    def update
        if @bakery.update(bakery_params)
            redirect_to bakery_path(@bakery)
        else
            flash[:errors] = @bakery.errors.full_messages
      
            redirect_to edit_bakery_path(@bakery.id)
        end
    end

    private

    def find_bakery
        @bakery = Bakery.find(1)
    end

    def bakery_params
        params.require(:bakery).permit(:name, :location, :phone, :hour, :img_url, :about, :email, :password)
    end

end
