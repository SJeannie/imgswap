class CommentsController < ApplicationController
  before_action :select_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = Comment.all
  end

  def show

  end

  def new
    @comment = Comment.new 
  end

  def create
    @comment = Comment.create(comment_params)
    redirect_to comments_path
  end

  def edit

  end

  def update
    @comment.update(comment_params)
    
    redirect_to @comment

  end

  def destroy
  end

  private
  def select_comment
    @comment = Comment.find(params[:id])
  end 

  def comment_params
    params.require(:comment).permit(:title, :image_url, :image, tags_attributes: [[:name]], tag_ids: [])
  end 

end
