class PicturesController < ApplicationController
  
  before_action :select_picture, only: [:show, :edit, :update, :destroy]

  def index
    @pictures = Picture.all
  end

  def show

  end

  def new
    @picture = Picture.new 
  end

  def create
    # byebug
    @picture = Picture.create(picture_params)
    redirect_to pictures_path
  end

  def edit

  end

  def update
    @picture.update(picture_params)
    
    redirect_to @picture

  end

  def destroy
  end

    private
    def select_picture
      @picture = Picture.find(params[:id])
    end 

    def picture_params
      params.require(:picture).permit(:title, :image_url, :image, tags_attributes: [[:name]], tag_ids: [])
    end 

end
