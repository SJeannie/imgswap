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
    @picture.destroy
    redirect_to pictures_path
  end

    private
    def select_picture
      @picture = Picture.find(params[:id])
    end

    def picture_params
      params.require(:picture).permit(:title, :image_url, :image, :comment_content, {tag_ids: []}, :tag_names)
    end

end