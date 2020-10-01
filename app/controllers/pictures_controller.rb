class PicturesController < ApplicationController

    def index
        @pictures = Picture.all
    end

    def show
        @picture = Picture.find(params[:id])
    end

    def create
        @picture = Picture.create(picture_params)
        redirect_to user_path(@picture.owner)
    end

    private

    def picture_params
        params.require(:picture).permit(:title, :image_url, :owner_id, tag_ids: [], tags_attributes: [:name])
    end
    
end
