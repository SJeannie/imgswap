class TagsController < ApplicationController
  before_action :select_tag, only: [:show, :edit, :update, :destroy]

  def index
    @tags = Tag.order(:name)
  end

  def show

  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.create(tag_params)
    redirect_to tags_path
  end

  def edit

  end

  def update
    @tag.update(tag_params)
    redirect_to @tag
  end

  def destroy
    @tag.destroy
    redirect_to tags_path
  end

    private
    def select_tag
      @tag = Tag.find(params[:id])
    end

    def tag_params
      params.require(:tag).permit(:name)
    end

end
