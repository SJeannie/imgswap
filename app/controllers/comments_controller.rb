class CommentsController < ApplicationController
  before_action :select_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = Comment.order(:name)
  end

  def show

  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    # redirect_to @comment.picture
  end

  def edit

  end

  def update
    @comment.update(comment_params)
    redirect_to @comment
  end

  def destroy
    @comment.destroy
    redirect_to @comment.picture
  end

    private
    def select_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:content, :user_id, :picture_id)
    end

end