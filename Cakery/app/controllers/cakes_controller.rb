class CakesController < ApplicationController
    before_action :find_cake, only: [:show, :edit, :update, :destroy]
    before_action :foreign_keys, only: [:new, :edit]
    skip_before_action :authorize, only:[:index, :show]

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
        
        if @cake.valid?
            redirect_to cake_path(@cake)
        else
            flash[:errors] = @cake.errors.full_messages
            redirect_to new_cake_path
        end
    end

    def edit
    end
    
    def update
        @cake.update(cake_params) 
        if @cake.valid?
            redirect_to cake_path(@cake)
        else
            flash[:errors] = @cake.errors.full_messages
            redirect_to edit_cake_path
        end      
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
        params.require(:cake).permit(:name, :occasion, :description, :serving_size, :img_url, :bakery_id, :baker_id, flavors_attributes:[:name], flavor_ids:[], dietary_restrictions: [])
    end

    def foreign_keys
        @bakers = Baker.all
        @bakeries = Bakery.all
        @flavors = Flavor.all
    end

    

end
