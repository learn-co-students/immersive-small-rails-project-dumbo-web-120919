class BakersController < ApplicationController
    before_action :find_baker, only: [:show, :edit, :update, :destroy]
    
    def index
        @bakers = Baker.all
    end

    def show
        
    end

    def new
        @baker = Baker.new
    end

    def create
        @baker = Baker.create(baker_params)

        if @baker.valid?
            redirect_to baker_path(@baker)
        else
            flash[:errors] = @baker.errors.full_messages
            redirect_to new_baker_path
        end
    end

    def edit
    end
    
    def update
        @baker.update(baker_params)

        if @baker.valid?
            redirect_to baker_path(@baker)
        else
            flash[:errors] = @baker.errors.full_messages
            redirect_to edit_baker_path
        end
    end

    def destroy
        @baker.destroy 

        redirect_to bakers_path
    end

    private

    def find_baker
        @baker = Baker.find(params[:id])
    end

    def baker_params
        params.require(:baker).permit(:name, :employment_status, :bio, :img_url, :quote, :star_baker, :bakery_id)
    end
end
